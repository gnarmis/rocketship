require 'spec_helper'



describe Project::Foo do
  
  def app
    @app ||= Project::Foo
    Capybara.app = Project::Foo
  end

  describe "GET '/'" do
    it "should be successful" do
      get '/'
      last_response.status == 200
    end
  end

  describe "GET '/button", :type => :request do
  	it "clicks a button" do
  		visit '/button'
  		click_link 'button'
  	end
  end
end
