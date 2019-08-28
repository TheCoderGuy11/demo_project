module OrdersHelper
  def expected_delivery_date(o)
    x = Date.today + o.product.delivery_time.number_of_days.days
  end

  def expected_delivery_time(p)
    x = Date.today + p.delivery_time.number_of_days.days
  end

end