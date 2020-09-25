class AddColumnsToCommecial < ActiveRecord::Migration[6.0]
  def change
    add_reference :commecials, :manager, foreign_key: true
    add_column :commecials, :image, :string
  end
end
