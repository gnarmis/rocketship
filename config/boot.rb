ENV["RACK_ENV"] ||= "development"

require 'bundler'
Bundler.setup

Bundler.require(:default, ENV["RACK_ENV"].to_sym)

Dir["./lib/*.rb"].each { |f| require f }

def app
  Rack::URLMap.new({
     "/"    => Foobar::Foo.new,
     "/bar" => Foobar::Bar.new
  })
end


