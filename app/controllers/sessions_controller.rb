class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to restaurants_path
    else
      flash.now[:alert] = "Failed To log in. Email or password incorrect"
      render :new
    end
  end

  def destroy

    session[:user_id] = nil
    redirect_to restaurants_path, notice: "Logged out!"
  end
end
