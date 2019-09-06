class AddSubCategoryInCategoryProducts < ActiveRecord::Migration[5.2]
  def change
    add_reference :category_products, :sub_category, foreign_key: true
  end
end
