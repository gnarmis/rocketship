ENV['RACK_ENV'] = "test"
if ENV['COVERAGE']
  require "SimpleCov"
  SimpleCov.start
end
require File.expand_path(File.dirname(__FILE__) + "/../config/boot")


RSpec.configure do |conf|
  conf.include Rack::Test::Methods
  conf.include Capybara::DSL
  Capybara.javascript_driver = :webkit
end
