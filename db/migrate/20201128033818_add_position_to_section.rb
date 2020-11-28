class AddPositionToSection < ActiveRecord::Migration[6.0]
  def change
    add_column :sections, :position, :integer
  end
end
