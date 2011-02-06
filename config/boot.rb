ENV["RACK_ENV"] ||= "development"

require 'bundler'
Bundler.setup

Bundler.require(:default, ENV["RACK_ENV"].to_sym)

Dir["./apps/*.rb"].each { |f| require f }

def app
  Rack::URLMap.new({
     "/"    => Foo.new,
     "/bar" => Bar.new
  })
end


