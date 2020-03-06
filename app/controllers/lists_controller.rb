class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  # Create new user does not automatically login
  # Some Lists are not associated specific users due to previous seed
  def show
    @list = List.find(params[:id])
    @votes = @list.votes.count
  end

  def new
    @list = List.new
  end

  def create
    @list = List.create(list_params)
    @user = User.find(session[:user_id])

    if @list.valid?
      @user.lists << @list
      redirect_to @list
    else
      flash[:message] = @list.flash[message].errors.full_messages
      render :new
    end
  end

  def edit
    @list = List.find(params[:id])
  end

  def update
    @list = List.find(params[:id])
    @list.update(list_params)
    redirect_to @list
  end

  def destroy
    @list = List.find(params[:id])
    @list.destroy
    redirect_to lists_path
  end

  private

  def list_params
    params.require(:list).permit(:name, :description, users_ids: [], show_ids: [])
  end
end
