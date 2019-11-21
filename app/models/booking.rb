class Booking < ApplicationRecord
  belongs_to :friend
  belongs_to :user

  validates :start_date, presence: true
  validates :end_date, presence: true


  def display_start_date
    display_date(start_date)
  end

  def display_end_date
    display_date(end_date)
  end

  def length_in_days
    (end_date - start_date).to_i
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

  def display_date(date)
    month = date.month
    day = date.day
    w_day = date.wday
    return "#{explicit_day(w_day)} #{day} #{explicit_month(month)}"
  end
end
