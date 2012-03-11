# minimal-template

## Update

- cleaned up lib/. Now, each modular app has its own folder, so you can spin out separate files to hold your views, models, etc, as your app grows.

- added an example grape app


## Overview

I needed a template where all the cool "new" stuff is used, like RSpec2, Bundler and additonal support for multiple applications as well as Ruby 1.9.2 compatibility.

Coverage report generation and a development console are both great to have, so I wanted to integrate SimpleCov, IRB, and Pry.

So, here it is.

## Usage

- clone this repository

- run `bundle install` (add other gems you may need to the Gemfile beforehand)

- start building your project

- modify your app routes in `config.ru`

- `rackup` to run your app

## Development

- run `rake` or `rake help` to see available tasks

- run `rake console` for IRB console and `rake pry` for Pry console

- run `rake spec` for testing

- run `rake coverage` to generate coverage reports

## Thanks

I looked at so many different examples from other people to hack this together.
Thanks to everyone out there, especially the [Padrino](http://www.padrinorb.com) team, whose sources were very helpful when I built this.
