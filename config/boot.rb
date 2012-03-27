ENV["RACK_ENV"] ||= "development"

require 'bundler'
Bundler.setup

Bundler.require(:default, ENV["RACK_ENV"].to_sym)

Dir[File.dirname(__FILE__) + '/../lib/**/*.rb'].each { |f| require f }