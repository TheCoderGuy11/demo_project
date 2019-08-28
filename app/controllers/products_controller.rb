class ProductsController < ApplicationController

  def index
    @product = current_user.customer? ? Product.all : current_user.products
  end

  def new
    @product = Product.new
    @product.build_delivery_time
  end

  def create
    byebug
    @product = current_user.products.new(product_params)
    if @product.save
      redirect_to products_path
    else
      render 'new'
    end
  end

  def show
    @product = Product.find(params[:id])
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update 
    @product = Product.find(params[:id])
    
    if @product.update(product_params)
      redirect_to products_path
    else 
      render 'edit'
    end
  end 

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_path
  end 

  private
    def product_params
      params.require(:product).permit(:name, :category, :price, :brand_name, delivery_time_attributes: [:expected_delivery_time])
    end

end