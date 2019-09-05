class ProductsController < ApplicationController
  before_action :authenticate_user!
  load_and_authorize_resource

  def index
    @product = current_user.customer? ? Product.paginate(page: params[:page], per_page: 6) : current_user.products.paginate(page: params[:page], per_page: 6)
  end

  def new
    @product = Product.new
    @product.build_delivery_time
    @product.images.build
  end

  def create
    @product = current_user.products.new(product_params)
    if @product.save
      HardWorker.perform_at(1.minutes.from_now, @product.name)
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
      params.require(:product).permit(:name, :category, :price, :quantity, :brand_name, images_attributes: [:file, :_destroy], delivery_time_attributes: [:number_of_days])
    end

end