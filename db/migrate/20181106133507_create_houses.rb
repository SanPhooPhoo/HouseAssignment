class CreateHouses < ActiveRecord::Migration[5.2]
  def change
    create_table :houses do |t|
      t.integer :number_of_rooms
      t.text :Address
      t.float :Price
      t.string :Owner_Name

      t.timestamps
    end
  end
end
