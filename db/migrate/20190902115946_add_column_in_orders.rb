class AddColumnInOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :delivery_date, :date 
  end
end
