class BookingsController < ApplicationController
  skip_before_action :authenticate_user!

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to bookings_path(@booking) #define path
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :user, :friend)
  end
end
