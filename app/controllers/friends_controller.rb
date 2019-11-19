class FriendsController < ApplicationController
  before_action :set_friend, only: [:show, :edit, :update, :destroy]
  def new
    @friend = current_user.friends.new
    authorize @friend
  end

  def create
    @friend = current_user.friends.new(friend_params)
    authorize @friend
    if @friend.save
      redirect_to friends_path(@friend)
    else
      render :new
    end
  end

  def index
    @friends = policy_scope(Friend).order(created_at: :desc)
  end

  def show
  end

  def edit
  end

  def update
    @friend.update(friend_params)
    redirect_to friend_path(@friend)
  end

  def destroy
    @friend.destroy
    redirect_to friends_path
  end

  private

  def friend_params
    params.require(:friend).permit(:name, :birth_date, :gender, :city, :description, :price)
  end

  def set_friend
    @friend = Friend.find(params[:id])
    authorize @friend
  end
end
