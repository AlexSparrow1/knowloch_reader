class UsersController < ApplicationController
  respond_to :html, :js
  
  def show
    @user = User.find(params[:id])
    @title = @user.name
  end
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:success] = "Welcome to the Knowloch Reader, friend and companion!"
      redirect_to @user
    else
      @title = "Sign Up"
      render 'new'
    end
  end
end
