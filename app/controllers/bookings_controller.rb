class BookingsController < ApplicationController

  # def new
  #   @booking = Booking.new
  #   @friend = Friend.find(params[:friend_id])
  #   authorize @booking
  # end

  def create
    @booking = current_user.bookings.new(booking_params)
    @friend = Friend.find(params[:friend_id])
    @booking.friend = @friend
    authorize @booking
    if @booking.save
      redirect_to dashboard_path #define path
    else
      render :'friends/show'
    end
  end

  def destroy
    @booking = current_user.bookings.find(params[:id])
    authorize @booking
    @booking.destroy
    redirect_to dashboard_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :user, :friend)
  end
end
