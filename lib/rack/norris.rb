module Rack
  class Norris
    def initialize(app)
      @app   = app
      @jokes = read_jokes
    end

    def call(env)
      status, headers, body = @app.call(env)
      headers["X-Chuck-Norris"] = @jokes.sample
      [status, headers, body]
    end

    private

    def read_jokes
      path = ::File.dirname(__FILE__)
      ::File.readlines(::File.join(path, "norris/jokes.txt"))
    end
  end
end