namespace :order_status do
  desc "Change the status of the order if it is deliver"

  task :set_order_to_delivery => [ :environment ] do
    Order.inprocess.each do |order|
      if order.delivery_date < DateTime.now
        order.update_attributes(status: 'delivered')
      end
    end
  end
end