class AddProductCategotyInProductDetails < ActiveRecord::Migration[5.2]
  def change
    add_reference :product_details, :product, foreign_key: true
    add_reference :product_details, :category, foreign_key: true
  end
end
