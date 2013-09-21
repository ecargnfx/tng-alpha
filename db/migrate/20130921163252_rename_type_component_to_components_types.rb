class RenameTypeComponentToComponentsTypes < ActiveRecord::Migration
  def change
    drop_table :type_component

    create_table :components_types, id: false do |t|
      t.integer :component_id
      t.integer :type_id
    end
  end
end
