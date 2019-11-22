class PagesController < ApplicationController
  def dashboard
    @passed_bookings = passed_bookings
    @upcoming_bookings = upcoming_bookings
  end

  private

  def passed_bookings
    return current_user.bookings.select{|booking| booking.passed?}
  end

  def upcoming_bookings
    return current_user.bookings.reject{|booking| booking.passed?}
  end
end
