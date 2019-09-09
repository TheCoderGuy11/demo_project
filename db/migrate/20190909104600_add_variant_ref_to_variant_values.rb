class AddVariantRefToVariantValues < ActiveRecord::Migration[5.2]
  def change
    add_reference :variant_values, :variant, foreign_key: true
  end
end
