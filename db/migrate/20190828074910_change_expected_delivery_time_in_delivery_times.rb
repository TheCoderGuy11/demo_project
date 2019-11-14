class ChangeExpectedDeliveryTimeInDeliveryTimes < ActiveRecord::Migration[5.2]
  def change
    change_column :delivery_times, :expected_delivery_time, :string
  end
end
