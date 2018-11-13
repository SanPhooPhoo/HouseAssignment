class RemoveOwnerNameFromHouse < ActiveRecord::Migration[5.2]
  def change
    remove_column :houses, :Owner_Name, :string
  end
end
