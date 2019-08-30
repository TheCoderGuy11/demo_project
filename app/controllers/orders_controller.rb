class OrdersController < ApplicationController
  def index
    @orders = current_user.orders.paginate(page: params[:page], per_page: 8) 
  end

  def create
    @order = current_user.orders.new(order_params)    
    if @order.save 
      redirect_to orders_path
    end
  end 

  def show 
    @orders = Order.find(params[:id])
  end

  def edit 
  end
  
  def update 
  end
  
  def cancel_item
    @order = Order.find(params[:id])
    @order.status = 'canceled'
    @order.save
    redirect_to orders_path
  end

  def destroy 
    @order = Order.find(params[:id])
    @order.destroy
    redirect_to orders_path
  end

  private
    def order_params
      params.require(:order).permit(:user_id, :product_id, :status, :payment)
    end
end
