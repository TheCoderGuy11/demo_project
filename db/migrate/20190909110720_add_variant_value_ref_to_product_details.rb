class AddVariantValueRefToProductDetails < ActiveRecord::Migration[5.2]
  def change
    add_reference :product_details, :variant_value, foreign_key: true
  end
end
