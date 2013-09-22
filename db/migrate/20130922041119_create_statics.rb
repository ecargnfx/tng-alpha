class CreateStatics < ActiveRecord::Migration
  def change
    create_table :statics do |t|
      t.string :url
      t.text :content

      t.timestamps
    end
  end
end
