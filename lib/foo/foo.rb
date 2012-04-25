require 'faraday'

module Project
  class Foo < Sinatra::Base
    register Sinatra::Synchrony
    Faraday.default_adapter = :em_synchrony
    # set configuration for this app
    configure :production, :development do
      enable :logging
      logger = Logger.new(STDOUT)
    end

    get '/' do
      logger.info "loading index page in foo"
      "Hello from foo"
    end

    get '/button' do
      erb :button
    end
    
    # I did this to be able to wrap my app in Rack::Auth::Digest for example
    ## Example:
    ## def self.new(*)
    ##  app = Rack::Auth::Digest::MD5.new(super) do |username|
    ##    {'foo' => 'bar'}[username]
    ##  end
    ##  app.realm = 'Foobar::Foo'
    ##  app.opaque = 'secretstuff'
    ##  app
    ## end   
    
    def self.new(*)
      super
    end
    
  end
end