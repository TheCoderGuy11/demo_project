class FixColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :delivery_times, :expected_delivery_time, :number_of_days
  end
end
