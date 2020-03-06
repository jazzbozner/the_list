class UsersController < ApplicationController
  skip_before_action :authorized, only: [:new, :create, :menu]

  def show
    @user = User.find(session[:user_id])
  end

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

  def data
    @users = User.all
    @shows = Show.all
    @lists = List.all
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, lists_id: [])
  end
end
