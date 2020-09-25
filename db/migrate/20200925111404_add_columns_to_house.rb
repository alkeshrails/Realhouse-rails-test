class AddColumnsToHouse < ActiveRecord::Migration[6.0]
  def change
    add_reference :houses, :manager, foreign_key: true
    add_column :houses, :image, :string
  end
end
