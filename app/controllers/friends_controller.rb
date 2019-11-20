class FriendsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  before_action :set_friend, only: [:show, :edit, :update, :destroy]
  def new
    @friend = current_user.friends.new
    authorize @friend
  end

  def create
    @friend = current_user.friends.new(friend_params)
    authorize @friend
    if @friend.save
      redirect_to friend_path(@friend)
    else
      render :new
    end
  end

  def index
    @friends = policy_scope(Friend).order(created_at: :desc)
  end

  def show
    # @age = age(@friend)
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
    params.require(:friend).permit(:name, :birthday, :gender, :city, :description, :price, :photo)
  end

  def set_friend
    @friend = Friend.find(params[:id])
    authorize @friend
  end
end
