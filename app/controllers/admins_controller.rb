class AdminsController < ApplicationController
  def index
    @admins = Admin.all
  end
  def new
    @admin = Admin.new
  end

  def destroy
    user = Admin.find_by(id: params["id"]) 
    user.delete
    redirect_to "/"
  end

  def show
    @admin = Admin.find_by(id: params["id"])
  end

  def create
    @admin = Admin.new
    @admin.name = params["name"]
    @admin.password = params["password"]
    if @admin.save
      redirect_to "/", notice: "Success signing up!"
    else
      render 'signup'
    end
  end

  def announce
    @admin = Admin.find_by(id: params["id"])
  end


end