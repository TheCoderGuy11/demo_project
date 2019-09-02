module ProductHelper
  def delivery_days(p)
    p.delivery_time.number_of_days
  end
end
