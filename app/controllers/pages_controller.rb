class PagesController < ApplicationController
  def dashboard
    @passed_bookings = passed_bookings
    @upcoming_bookings = upcoming_bookings
    @passed_pimp_bookings = passed_pimp_bookings
    @upcoming_pimp_bookings = upcoming_pimp_bookings
  end

  private

  def passed_bookings
    return current_user.bookings.select { |booking| booking.passed? }
  end

  def upcoming_bookings
    return current_user.bookings.reject { |booking| booking.passed? }
  end

  def passed_pimp_bookings
    bookings = []
    current_user.friends.each do |friend|
      bookings += friend.bookings.select { |booking| booking.passed? }
    end
    return bookings
  end

  def upcoming_pimp_bookings
    bookings = []
    current_user.friends.each do |friend|
      bookings += friend.bookings.reject { |booking| booking.passed? }
    end
    return bookings
  end
end
