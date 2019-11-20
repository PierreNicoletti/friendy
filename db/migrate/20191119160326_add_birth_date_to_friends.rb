class AddBirthDateToFriends < ActiveRecord::Migration[5.2]
  def change
    add_column :friends, :birthday
#:date
  end
end
