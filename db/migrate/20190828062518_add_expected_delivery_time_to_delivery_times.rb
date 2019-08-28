class AddExpectedDeliveryTimeToDeliveryTimes < ActiveRecord::Migration[5.2]
  def change
    add_column :delivery_times, :expected_delivery_time, :datetime
  end
end
