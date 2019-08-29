module ApplicationHelper

  def is_customer?
    current_user.customer?
  end

  def is_seller?
    current_user.seller?
  end

  def expected_delivery_date(product)
    no_of_days = product.delivery_time.number_of_days
    Date.today + no_of_days.days
  end
end
