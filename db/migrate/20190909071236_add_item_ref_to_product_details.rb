class AddItemRefToProductDetails < ActiveRecord::Migration[5.2]
  def change
    add_reference :product_details, :item, foreign_key: true 
  end
end
