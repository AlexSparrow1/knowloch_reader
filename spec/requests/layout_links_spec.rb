require 'spec_helper'

describe "LayoutLinks" do
  
  it "should have a Home page at '/'" do
    get '/'
    response.should have_selector('title', :content => "Home")
  end
  
  it "should have a Help page '/help'" do
    get "/help"
    response.should have_selector('title', :content => "Help")
  end
  
  it "should have a signup page at '/signup'" do
    get 'signup'
    response.should have_selector('title', :content => "Sign Up")
  end
end