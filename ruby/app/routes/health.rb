class HealthRoutes < Sinatra::Base
  use AuthMiddleware
  get('/') do
    if request.env['AUTHED'] == true
        puts "working"
      'App working OK'
    else
        puts "working not"
      status 403
    end
  end
end
