require 'rails_helper'

RSpec.describe CartsController, type: :controller do

  context " GET show " do
    it "should display all the item in the cart" do
      order = FactoryBot.create(:order)
      cart = FactoryBot.create(:cart)
      get :show, params: { id: order.carts }
      expect(assigns(:cart)).to be_truthy
      expect(response).to render_template :show  
    end

  end
    context "GET change" do
      it "changes the quantity and price of the item in cart" do
        item = FactoryBot.create(:item)
        order = Order.create()
        session[:order_id]=order.id
        cart = FactoryBot.create(:cart)
        order.carts << cart
        get :change , params:{
          item_id:item.id,
        }
        expect(response).to redirect_to carts_show_path
        expect(flash[:notice]).to match(/Updated the cart*/)
      end
    end

    context " GET add_to_cart" do 
      it "should add item to the cart " do
        item = FactoryBot.create(:item)
        order = Order.create()
        session[:order_id]=order.id
        get :add_to_cart ,params: {
          id: item.id
        }
        expect(order.carts).to_not be_empty
        expect(response).to redirect_to carts_show_path
        expect(flash[:notice]).to match(/successfully added to the cart*/)
      end
    end

    context "DELETE destroy" do
      it "deletes the item in the cart" do
        cart = FactoryBot.create(:cart)
        delete :destroy,params:{id: cart.id }
        expect(assigns(:cart_item)).to be_truthy
        expect(response).to redirect_to carts_show_path
        expect(flash[:notice]).to match(/successfully removed.*/)
      end
    end

    context "GET discount" do 
      it "should apply discount to the item" do
        item = FactoryBot.create(:item)
        order = Order.create()
        session[:order_id]=order.id
        cart = FactoryBot.create(:cart)
        discount = FactoryBot.create(:discount)
        order.carts << cart
        get :discount,params:{item_id: item.id }
        expect(response).to redirect_to carts_show_path
        expect(flash[:notice]).to match(/Discount Applied.*/)
      end
    end



end



