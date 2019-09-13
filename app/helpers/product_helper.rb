module ProductHelper
  def delivery_days(p)
    p.delivery_time.number_of_days
  end

  def sub_category_options
    SubCategory.find(params[:sub_category_id]).items.map { |u| [u.name, u.id] }
  end
  
  def item_options
    Item.all.map { |u| [u.name, u.id] }
  end 
end
