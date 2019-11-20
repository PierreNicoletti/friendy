class AddBirthDateToFriends < ActiveRecord::Migration[5.2]
  def change
    add_column :friends, :birth_date, :date
#:date
  end
end
