namespace :delivery_date do

  task :set_delivery_date => [ :environment ] do
     orders = Order.nil_delivery_date # create scope
     orders.each do |order|
      date = DateTime.now + order.delivery_days_count # added a deligate function
      order.update_attributes(delivery_date: date)
      end
    end
  end