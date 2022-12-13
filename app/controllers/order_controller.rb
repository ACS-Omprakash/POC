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


end
