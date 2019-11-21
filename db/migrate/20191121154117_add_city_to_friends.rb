class AddCityToFriends < ActiveRecord::Migration[5.2]
  def change
    add_column :friends, :city, :string
  end
end
