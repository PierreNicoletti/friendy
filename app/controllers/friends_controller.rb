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
    @geos = Friend.geocoded #returns friends with coordinates

    @markers = @geos.map do |friend|
      {
        lat: friend.latitude,
        lng: friend.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { friend: friend })
      }
    end
    unless current_user.nil?
      @markers << {
        lat: current_user.latitude,
        lng: current_user.longitude,
        infoWindow: render_to_string(partial: "info_user", locals: { user: current_user })
      }
    end
  end

  def show
    @booking = Booking.new
    authorize @booking
    # @age = age(@friend)
    # @geo = @friend.geocoded
    @markers = [{
      lat: @friend.latitude,
      lng: @friend.longitude,
      infoWindow: render_to_string(partial: "info_window_show", locals: { friend: @friend })
    }]
    unless current_user.nil?
      @markers << {
        lat: current_user.latitude,
        lng: current_user.longitude,
        infoWindow: render_to_string(partial: "info_user_show", locals: { user: current_user })
      }
    end
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
    params.require(:friend).permit(:name, :birth_date, :gender, :city, :description, :price, :photo)
  end

  def set_friend
    @friend = Friend.find(params[:id])
    authorize @friend
  end
end
