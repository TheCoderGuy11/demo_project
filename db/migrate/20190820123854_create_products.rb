class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :product_name
      t.string :product_type
      t.string :seller_name
      t.integer :seller_mobile
      t.string :seller_address
      t.string :customer_name
      t.integer :customer_mobile
      t.string :customer_address

      t.timestamps
    end
  end
end
