require 'spec_helper'

describe Project::FooAPI do
  
  def app
    @app ||= Project::FooAPI
  end
  
  describe "GET '/api/hello'" do
    it "should be successful" do
      get '/api/hello'
      last_response.status.should == 200
    end
  end
end
