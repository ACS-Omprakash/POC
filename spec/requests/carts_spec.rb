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

end



