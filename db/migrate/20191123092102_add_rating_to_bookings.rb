class AddRatingToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :rating, :integer
    add_column :bookings, :comment, :string
  end
end
