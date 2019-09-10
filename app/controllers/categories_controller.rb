class CategoriesController < ApplicationController
  def index
  end

  def show
    @categories = Category.find(params[:id]).products
  end
end 