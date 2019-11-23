class BookingsController < ApplicationController
  def create
    @booking = current_user.bookings.new(booking_params)
    @friend = Friend.find(params[:friend_id])
    @booking.friend = @friend
    authorize @booking
    if @booking.save
      redirect_to dashboard_path #define path
    else
      render 'friends/show'
    end
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    authorize @booking
    if @booking.save
      respond_to do |format|
        format.html { redirect_to dashboard_path }
        format.js # <-- will render `app/views/bookings/update.js.erb`
      end
    else
      respond_to do |format|
        format.html { render '/dashboard' }
        format.js # <-- idem
      end
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
    params.require(:booking).permit(:start_date, :end_date, :user, :friend, :rating, :comment)
  end
end
