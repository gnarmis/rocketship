require 'spec_helper'

describe Foobar::Foo do
  
  def app
    Foobar::Foo.app
  end

  describe "GET '/'" do
    it "should be successful" do
      get '/'
      last_response.should be_ok
    end
  end
end
