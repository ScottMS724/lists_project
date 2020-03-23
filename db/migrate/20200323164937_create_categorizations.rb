class CreateCategorizations < ActiveRecord::Migration[6.0]
  def change
    create_table :categorizations do |t|
      t.integer :category_id 
      t.integer :item_id 
      t.boolean :fragile? 

      t.timestamps
    end
  end
end
