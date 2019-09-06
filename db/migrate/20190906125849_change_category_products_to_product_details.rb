class ChangeCategoryProductsToProductDetails < ActiveRecord::Migration[5.2]
  def change
    rename_table :category_products, :product_details
  end
end
