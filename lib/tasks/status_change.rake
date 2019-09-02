namespace :status do
  desc "In this file we will change the status of the order if it is deliver"

  task :check_status => [ :environment ] do
    Order.find_each do |o|
      if o.status == "inprocess" and o.delivery_date != 'nil'
        x = o.delivery_date <=> Date.today
        if x == -1
          desc "Status"
          o.status = 'delivered'
          o.save
        end
      end
    end
  end
end