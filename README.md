# sinatra-rspec-bundler-template

## Overview

I needed a template where all the cool "new" stuff is used, like RSpec2, Bundler and additonal support for multiple applications as well as Ruby 1.9.2 compatibility.

So here it is.

## Usage

- clone this repository

- run `bundle install` (add other gems you may need to the Gemfile beforehand)

- run `rake spec` (just for fun)

- start building your project

- modify app function in config/boot.rb to map your apps to the routes

- `rackup config.ru` to start it

## Thanks

I looked at so many different examples from other people to hack this together.
Thanks to everyone out there, especially the [Padrino](http://www.padrinorb.com) team, whose sources were very helpful when I built this.
