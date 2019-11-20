class Booking < ApplicationRecord
  belongs_to :friend
  belongs_to :user

  def display_date(date)
    month = date.month
    day = date.day
    w_day = date.wday
    year = date.year
    return "#{explicit_day(w_day)} #{day} #{explicit_month(month)} #{year}"
  end

  private

  def explicit_month(month)
    months = ["January","February","March","April","May","June","July","August","September","October","November","December"]
    return months[month - 1]
  end

  def explicit_day(day)
    days = %w[Sunday Monday Tuesday Wednesday Thursday Friday Saturday]
    return days[day]
  end
end
