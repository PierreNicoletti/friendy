class CreateFriends < ActiveRecord::Migration[5.2]
  def change
    create_table :friends do |t|
      t.string :name
      t.datetime :birth_date
      t.string :gender
      t.string :city
      t.text :description
      t.decimal :price

      t.timestamps
    end
  end
end
