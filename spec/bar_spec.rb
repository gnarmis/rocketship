require 'spec_helper'

describe Bar do
  describe "GET '/bar'" do
    it "should be successful" do
      get '/bar'
      last_response.should be_ok
    end
  end
end
