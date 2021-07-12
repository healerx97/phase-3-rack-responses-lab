require 'pry'
class Application
    def call(env)
        resp = Rack::Response.new
        date = Time.new
        if date.hour >= 12
            resp.write "Good Afternoon!"
        else
            resp.write "Good Morning!"
        end
        resp.finish
    end

end
