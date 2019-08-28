module ApplicationHelper

  def is_customer?
    current_user.customer?
  end

  def is_seller?
    current_user.seller?
  end
end
