class AddOrderRefToDeliveryTimes < ActiveRecord::Migration[5.2]
  def change
    add_reference :delivery_times, :order, foreign_key: true
  end
end
