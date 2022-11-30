class CartsController < ApplicationController

  def change 

     item = Item.find(params[:item_id])
     quantity = params[:quantity].to_i
     cart_items = Cart.find_by(item_id: params[:item_id])
     cart_items.quantity = quantity
     cart_items.subtotal = (cart_items.unit_price)*cart_items.quantity     
     cart_items.save
     redirect_to request.referer
  end

  def show
    @cart = Cart.all
  end

  def add_to_cart
    item = Item.find(params[:id])
    cart_items = Cart.find_by(item_id: params[:id])
    if cart_items.present?
      cart_items.update_attribute(:quantity, cart_items.quantity + 1)    
    else
      cart_items = Cart.create(:item_id => item.id,
        :itemname => item.itemname,
        :unit_price => item.price,
        :subtotal => item.price,
        :itemdescription => item.itemdescription,
        :quantity => 1)
    end
     redirect_to carts_show_path
  end

end
