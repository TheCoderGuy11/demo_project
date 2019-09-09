class CategoriesController < ApplicationController
  def index
  end

  def sub_category
    @sub_categories = Product.find(params[:category_id])
    @sub_categories.sub_categories
  end
end