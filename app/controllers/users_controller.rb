class UsersController < ApplicationController
  skip_before_action :authorized, only: [:new, :create, :menu]

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      redirect_to login_path
    else
      flash[:message] = @user.errors.full_messages
      render :new
    end
  end

  def show # show all user's lists
    @user = User.find(session[:user_id])
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, lists_id: [])
  end
end
