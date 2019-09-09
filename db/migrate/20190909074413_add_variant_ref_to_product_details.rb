class AddVariantRefToProductDetails < ActiveRecord::Migration[5.2]
  def change
    add_reference :product_details, :variant, foreign_key: true
  end
end
