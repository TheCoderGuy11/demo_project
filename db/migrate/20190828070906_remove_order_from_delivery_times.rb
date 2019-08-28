class RemoveOrderFromDeliveryTimes < ActiveRecord::Migration[5.2]
  def change
    remove_reference :delivery_times, :order, foreign_key: true
  end
end
