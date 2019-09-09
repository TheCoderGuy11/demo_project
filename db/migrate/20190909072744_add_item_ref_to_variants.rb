class AddItemRefToVariants < ActiveRecord::Migration[5.2]
  def change
    add_reference :variants, :item, foreign_key: true
  end
end
