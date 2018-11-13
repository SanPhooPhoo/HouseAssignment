class CreateOwners < ActiveRecord::Migration[5.2]
  def change
    create_table :owners do |t|
      t.string :Name
      t.string :Email
      t.integer :Phone
      t.references :house, foreign_key: true

      t.timestamps
    end
  end
end
