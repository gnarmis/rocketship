ENV['RACK_ENV'] = "test"
if ENV['COVERAGE']
	require "SimpleCov"
	SimpleCov.start
end
require File.expand_path(File.dirname(__FILE__) + "/../config/boot")

Webrat.configure do |conf|
  conf.mode = :rack
end

RSpec.configure do |conf|
  conf.include Rack::Test::Methods
  conf.include Webrat::Methods
  conf.include Webrat::Matchers
end
