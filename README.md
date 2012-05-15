# Rocketship

## Overview

Ruby has some great micro-frameworks to jumpstart development of web services. But when you want to spin up a number of basic services using things like [Sinatra](https://github.com/sinatra), [RestClient](https://github.com/adamwiggins/rest-client), and testing helpers such as [RSpec](https://github.com/rspec/rspec), [Capybara](https://github.com/jnicklas/capybara), and [SimpleCov](https://github.com/colszowka/simplecov) (not to mention dependency management using [Bundler](https://github.com/bundler/bundler) and a few simple Rake tasks), there's quite a lot of complexity and boiler-plate to deal with.

Want to just dive into development without browsing around for a while and setting things up? Working on multiple Sinatra apps and want a sane way to organize everything? Use Rocketship.

## Usage

- Install RVM and ruby-1.9.3

- Clone this repository

- Run `bundle install --path vendor/ruby`. Later, add gems you need to Gemfile, run `bundle install`, and Bundler will install and package up your new gems too.

- Start building your project

- Modify your app routes in `config.ru`

- Add background processes and basically any process you need to run to start your app in Procfile.dev.

- Procfile has been provided to allow you to easily deploy this on Heroku's Cedar stack. If you're only using Sinatra, it should be sufficient. Also, Sinatra-synchrony will speed your app up decently :)

- Add specs in spec/

- `rake s` to run your app

- Bump version number in lib/project.rb

You can add your own Rack-based frameworks in their own folders under `lib/`, putting your classes (which sub-class your favorite framework) under the main module (by default, it's called `Project`). Then, update `config.ru` and you're good to go!

## Development

- Run `rake` or `rake help` to see available tasks

- Insert `binding.pry` anywhere in your code to invoke the Pry REPL, which you can use for debugging purposes.

- There's simple logging and an example of a Capybara test you can look at in this template.

## Thanks

The original fork of this project came from https://github.com/daddz/sinatra-rspec-bundler-template, who in turn credits the [Padrino](http://www.padrinorb.com/) team greatly.
