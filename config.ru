require File.dirname(__FILE__) + '/config/boot.rb'

run Rack::URLMap.new({
            "/"    => Foobar::Foo.new,
            "/bar" => Foobar::Bar.new
})
