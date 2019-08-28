class AddProductRefToDeliveryTimes < ActiveRecord::Migration[5.2]
  def change
    add_reference :delivery_times, :product, foreign_key: true
  end
end
