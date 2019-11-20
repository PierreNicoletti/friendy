class RemoveColumnFromBookings < ActiveRecord::Migration[5.2]
  def change
    remove_column :bookings, :start_date, :datetime
  end
end
