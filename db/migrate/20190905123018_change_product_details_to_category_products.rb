class ChangeProductDetailsToCategoryProducts < ActiveRecord::Migration[5.2]
  def change
    rename_table :product_details, :category_products
  end
end
