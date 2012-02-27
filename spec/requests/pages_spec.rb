require 'spec_helper'

describe PagesController do
  render_views
  
  describe "GET 'pages/home'" do
    it "should be successful" do
      get 'pages/home'
      response.should be_success
    end
    
    it "should have the right title" do
      get 'pages/home'
      response.should have_selector("title", :content => @base_title + " | Home")
    end
  end
  
  describe "GET 'pages/help'" do
    it "should be successful" do
      get 'pages/help'
      response.should be_success
    end
    
    it "should be successful" do
      get 'pages/help'
      response.should have_selector("title", :content => @base_title + " | Help")
    end
  end
  
end