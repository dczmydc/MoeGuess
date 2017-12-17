class SessionsController < ApplicationController

  def destroy
    reset_session
    redirect_to "/", notice: "Logout successfully!"
  end

  def new

  end

  def create
    if session["admin_id"].present? || session["user_id"].present?
      redirect_to "/", notice: "You must log out before sign in."
      return
    end
    #1.check is administer
    admin = Admin.find_by(name: params["name"])
    if admin.present?
      if admin.authenticate(params["password"])
        session["admin_id"] = admin.id
        session["is_ad"] = true
        redirect_to "/", notice: "Welcome back, administer #{admin.name}"
        return
      else
        redirect_to "/login", notice: "Your admin password is incorrect"
        return
      end
    end

    #2.check is user
    user = User.find_by(name: params["name"])
    if user.present?
      if user.authenticate(params["password"])
        session["user_id"] = user.id
        session["is_ad"] = false
        redirect_to "/", notice: "Welcome back, #{user.name}"
        return
      else
        redirect_to "/login", notice: "Your uzname/pwd is not correct."
        return
      end
    else
      redirect_to "/login", notice: "Your uzname/pwd is incorrect."
      return
    end
  end

end