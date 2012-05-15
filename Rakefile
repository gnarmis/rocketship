require 'rspec/core/rake_task'

task :default => :help

desc "Run app using foreman and Procfile.dev"
task :start do
  sh "bundle exec foreman start -f Procfile.dev"
end
task :s => :start

desc "Run specs"
task :spec do
  RSpec::Core::RakeTask.new(:spec) do |t|
    t.rspec_opts = ["-f progress", "-r ./spec/spec_helper.rb"]
    t.pattern = './spec/**/*_spec.rb'
  end
end

desc "Run all specs with code coverage"
task :coverage do
  sh "rm -rf coverage/*"
  ENV['COVERAGE'] = "true"
  sh "rspec -r spec_helper"
end

desc "Run IRB console with app environment"
task :console do
  puts "Loading development console..."
  system("irb -r ./config/boot.rb")
end

desc "Run Pry console with app environment"
task :pry do
  puts "Loading Pry development console..."
  system("bundle exec pry -r ./config/boot.rb")
end

desc "Show help menu"
task :help do
  puts "Available rake tasks: "
  puts "rake start, rake s - Run app using foreman and Procfile.dev"
  puts "rake console - Run a IRB console with the enviroment loaded"
  puts "rake pry - Run a Pry console with the enviroment loaded"
  puts "rake spec - Run specs"
  puts "rake coverage - Run specs and calculate coverage"
end