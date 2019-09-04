class RenameProductImagesToImages < ActiveRecord::Migration[5.2]
  def change
    rename_table :product_images, :images
  end
end
