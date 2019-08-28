class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.string :category
      t.string :price
      t.string :brand_name
      
      t.timestamps
    end
  end
end
