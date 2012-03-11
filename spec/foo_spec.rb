require 'spec_helper'

describe Project::Foo do
  
  def app
    @app ||= Project::Foo
  end

  describe "GET '/'" do
    it "should be successful" do
      get '/'
      last_response.should be_ok
    end
  end
end
