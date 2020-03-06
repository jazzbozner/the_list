class ApplicationController < ActionController::Base
  before_action :authorized, only: [:show, :index, :edit, :update, :destroy]
  helper_method :current_user, :logged_in?
  #  Creates the session assigned to the user's id
  def login_user(user)
    session[:user_id] = @user.id
  end

  # defines that the user exists - helper
  def current_user
    if session[:user_id]
      User.find(session[:user_id])
    else
      nil
    end
  end

  # Boolean to identify that the user value is strict boolean
  def logged_in?
    !!current_user
  end

  # used to allow specific routes avaliable to user
  def authorized
    unless logged_in?
      flash[:notice] = "Please Log In"
      redirect_to login_path
    end
  end
end
