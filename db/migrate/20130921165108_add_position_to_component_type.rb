class AddPositionToComponentType < ActiveRecord::Migration
  def change
    change_table :component_types do |t|
      t.integer :position
    end
  end
end
