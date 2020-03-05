class SessionsController < ApplicationController
  skip_before_action :authorized, only: [:new, :create, :menu, :login]

  def create
    @user = User.find_by(username: params[:username])

    if @user && @user.authenticate(params[:password])
      login_user(@user)
      redirect_to lists_path
    else
      flash[:notice] = "Please Try Again:"
      redirect_to login_path
    end
  end

  def destroy
    session.delete(:user_id)
    flash[:notice] = "Logged Out:"
    redirect_to root_path
  end
end
