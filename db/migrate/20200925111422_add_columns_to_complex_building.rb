class AddColumnsToComplexBuilding < ActiveRecord::Migration[6.0]
  def change
    add_reference :complex_buildings, :manager, foreign_key: true
    add_column :complex_buildings, :image, :string
  end
end
