class RemoveBirthDateFromFriends < ActiveRecord::Migration[5.2]
  def change
    remove_column :friends, :birth_date, :datetime
  end
end
