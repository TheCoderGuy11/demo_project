class CreateVariantValues < ActiveRecord::Migration[5.2]
  def change
    create_table :variant_values do |t|
      t.string :name

      t.timestamps
    end
  end
end
