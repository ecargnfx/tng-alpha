class CreateComponentTypes < ActiveRecord::Migration
  def change
    create_table :component_types do |t|
      t.integer :component_id
      t.integer :type_id

      t.timestamps
    end
  end
end
