module Foobar
  class Foo < Sinatra::Base
    
    #configure do
      # set app specific settings
      # for example different view folders
    #end
    
    get '/' do
      "Hello from foo"
    end
    
    # I did this to be able to wrap my app in Rack::Auth::Digest for example
    ## Example:
    ## def self.app
    ##  app = Rack::Auth::Digest::MD5.new(Historiously::Api.new) do |username|
    ##    {'foo' => 'bar'}[username]
    ##  end
    ##  app.realm = 'Foobar::Foo'
    ##  app.opaque = 'secretstuff'
    ##  app
    ## end   
    
    def self.app
      Foobar::Foo.new
    end
    
  end
end
