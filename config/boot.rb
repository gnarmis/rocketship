ENV["RACK_ENV"] ||= "development"

require 'bundler'
Bundler.setup

Bundler.require(:default, ENV["RACK_ENV"].to_sym)

require File.join(File.dirname(__FILE__) + '/../lib/project.rb')

Dir[File.dirname(__FILE__) + '/../lib/**/*.rb'].each { |f| require f }