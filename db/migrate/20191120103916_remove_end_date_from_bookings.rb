class RemoveEndDateFromBookings < ActiveRecord::Migration[5.2]
  def change
    remove_column :bookings, :end_date, :datetime
  end
end
