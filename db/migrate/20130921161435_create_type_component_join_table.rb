class CreateTypeComponentJoinTable < ActiveRecord::Migration
  

  def change
    create_table :type_component, id: false do |t|
      t.integer :type_id
      t.integer :component_id
    end
  end


end
