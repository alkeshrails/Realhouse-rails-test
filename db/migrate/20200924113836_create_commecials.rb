class CreateCommecials < ActiveRecord::Migration[6.0]
  def change
    create_table :commecials do |t|
      t.string :owner
      t.string :address
      t.integer :shops
      t.integer :units
      t.integer :sqmt
      t.integer :parking
      t.float :price

      t.timestamps
    end
  end
end
