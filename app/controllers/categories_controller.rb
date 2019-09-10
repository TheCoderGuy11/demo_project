class CategoriesController < ApplicationController
  def index
  end

  def show
    @categories = Category.find(params[:id]).sub_categories
  end

  def sub_category
    @sub_categories = SubCategory.find(params[:id]).products
  end

end 