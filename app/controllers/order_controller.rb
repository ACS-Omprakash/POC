class OrderController < ApplicationController

    def orders 
        @orders = Order.all
    end
     
    def place_order
        @order = Order.find(session[:order_id])
        @order_items = @order.carts
        @order.total=params[:total].to_i
        @order.save
        flash[:notice] = "Successfully placed order"
        session[:order_id]=nil
        redirect_to items_path
    end

    private

  def order_session
    if session[:order_id]
      session[:order_id]
    else 
      @order=Order.create
      session[:order_id]=@order.id
    end 
  end 


end
