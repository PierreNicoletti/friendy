class RemoveCityFromFriends < ActiveRecord::Migration[5.2]
  def change
    remove_column :friends, :city, :string
  end
end
