class UsersController < ApplicationController
  def index
    @users = User.all
  end
  def new
    @user = User.new
  end
  def destroy
    user = User.find_by(id: params["id"]) 
    user.delete
    redirect_to "/"
  end

  def show
    @user = User.find_by(id: params["id"])
  end

  def create
    @user = User.new
    @user.name = params["name"]
    @user.password = params["password"]
    if @user.save
      redirect_to "/", notice: "Success!"
    else
      # redirect_to "/users/new", notice: "Whoa, nice try!"
      render 'signup'
    end
  end
end