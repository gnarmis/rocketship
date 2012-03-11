module Project
  class FooAPI < Grape::API
    prefix 'api'
    #version 'v1', :using => :header, :vendor => 'FooAPI', :format => :json

    helpers do
      # define Grape helpers
    end

    # GET '/api/hello' => {"hello": "world"}
    get 'hello' do
      {:hello => 'world'}
    end
  end
end
