class CartsController < ApplicationController
  before_action :order_session

  def change 
     @order = Order.find(session[:order_id])
     item = Item.find(params[:item_id])
     quantity = params[:quantity].to_i
     @cart_items = @order.carts.find_by(item_id: params[:item_id])
     @cart_items.quantity = quantity
     @cart_items.subtotal = (@cart_items.unit_price)*@cart_items.quantity  
     @cart_items.save
     flash[:notice] = "Updated the cart"
     redirect_to request.referer
  end

  def show
    @order = Order.find(session[:order_id])
    @cart = @order.carts
  end

  def add_to_cart
    @order = Order.find(session[:order_id])
    @item = Item.find(params[:id])
    if @order.carts.find_by(item_id: @item.id).present?
      @cart_item =  @order.carts.find_by(item_id: params[:id])
      @cart_item.quantity = @cart_item.quantity + 1
    else
      @cart_item = Cart.create(:item_id => @item.id,
      :itemname => @item.itemname,
      :unit_price => @item.price,
      :subtotal => @item.price,
      :image => @item.image,
      :itemdescription => @item.itemdescription,
      :quantity => 1,
      :discount_id => @item.discount_id);
      if @item.customizedfood.present?
        @item.customizedfood.cart_id = @cart_item.id
        @item.customizedfood = nil
      end
      @order.carts << @cart_item
      flash[:notice] = "successfully added to the cart"
    end
    
    redirect_to carts_show_path
  end

  def discount
    @order = Order.find(session[:order_id])
    item = Item.find(params[:item_id])
    @cart_items = @order.carts.find_by(item_id: params[:item_id])
    @discount = (@cart_items.unit_price*@cart_items.discount.percentage)
    @cart_items.subtotal = (@cart_items.unit_price - @discount)*@cart_items.quantity  
    @cart_items.save 
    flash[:notice] = "Discount Applied"
    redirect_to request.referer
  end

  def destroy
    @cart_item = Cart.find(params[:id])
    @cart_item.destroy
    flash[:notice] = "successfully removed"
    redirect_to carts_show_path
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
