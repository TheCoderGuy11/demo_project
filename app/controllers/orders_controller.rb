class OrdersController < ApplicationController
  load_and_authorize_resource
  
  def index
    @orders = current_user.orders.paginate(page: params[:page], per_page: 6) 
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
 
  def cancel_item
    @order = Order.find(params[:id])
    @order.status = 'canceled'
    @order.save
    redirect_to orders_path
  end

  def invoice_pdf
    @order = Order.find(params[:id])
    # request.format = :pdf
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "invoice_pdf",   # Excluding ".pdf" extension.
        template: "template/invoice_pdf.html.erb",
        layout: 'invoice_layout.html.erb'
      end
    end
  end

  def destroy 
    @order = Order.find(params[:id])
    @order.destroy
    respond_to do |format|
      format.html { redirect_to orders_path, notice: 'Article was successfully destroyed' }
    end
  end

  private
    def order_params
      params.require(:order).permit(:user_id, :product_id, :status, :payment, :delivery_date)
    end
end
