# Rocketship

## Overview

Ruby has some great micro-frameworks to jumpstart development of web services. But when you want to spin up a number of basic services using things like [Sinatra](https://github.com/sinatra), [Grape](https://github.com/intridea/grape), and [RestClient](https://github.com/adamwiggins/rest-client), along with testing helpers such as [RSpec](https://github.com/rspec/rspec), [Webrat](https://github.com/brynary/webrat), and [SimpleCov](https://github.com/colszowka/simplecov) (not to mention dependency management using [Bundler](https://github.com/bundler/bundler) and a few simple Rake tasks), there's quite a lot of complexity and boiler-plate to deal with.

Want to just dive into development without browsing around for a while and setting things up? Use Rocketship. 

Currently, Rocketship shows you how to integrate a [Sinatra](https://github.com/sinatra) app and a [Grape](https://github.com/intridea/grape) API app together using Rack, along with basic support for development and testing.

## Usage

- clone this repository

- run `bundle install` (add other gems you may need to the Gemfile beforehand)

- start building your project

- modify your app routes in `config.ru`

- `rackup` to run your app

You can add your own Rack-based frameworks in their own folders under `lib/`, putting your classes (which sub-class your favorite framework) under the main module (by default, it's called `Project`). Then, update `config.ru` and you're good to go!

## Development

- run `rake` or `rake help` to see available tasks

- run `rake console` for IRB console and `rake pry` for Pry console

- run `rake spec` for testing

- run `rake coverage` to generate coverage reports

## Thanks

The original fork of this project came from https://github.com/daddz/sinatra-rspec-bundler-template, who in turn credits the [Padrino](http://www.padrinorb.com/) team greatly.
