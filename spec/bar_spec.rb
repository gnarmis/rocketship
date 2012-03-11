require 'spec_helper'

describe Project::Bar do
  
  def app
    @app ||= Project::Bar
  end
  
  describe "GET '/'" do
    it "should be successful" do
      get '/'
      last_response.should be_ok
    end
  end
end
