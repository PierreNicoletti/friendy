class FriendsController < ApplicationController
  before_action :set_friend, only: [:show, :edit, :update, :destroy]
  def new
    @friend = Friend.new
  end

  def create
    @friend = Friend.new(friend_params)
    if @friend.save
      redirect_to friends_path(@friend)
    else
      render :new
    end
  end

  def index
    @friends = Friend.all
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
  end
end
