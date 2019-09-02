namespace :delivery_date do
  desc "Change the status of the order if it is deliver"

  task :set_delivery_date => [ :environment ] do
    Order.find_each do |order|
      if order.delivery_date == nil
        date = DateTime.now + order.product.delivery_time.number_of_days 
        order.update_attributes(delivery_date: date)
      end
    end
  end
end