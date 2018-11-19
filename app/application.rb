class Application

  def call(env)
    resp = Rack::Response.new

    time = Time.new

    if time.hour < 12
      # binding.pry
      resp.write "#{time.hour}"
    else
      resp.write "Good Afternoon!"
    end

    resp.finish
  end

end
