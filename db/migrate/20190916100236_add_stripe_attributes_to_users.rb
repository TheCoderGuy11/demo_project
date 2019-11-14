class AddStripeAttributesToUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :stripe_id, :string
  end
end
