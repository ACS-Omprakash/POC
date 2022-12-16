require 'rails_helper'

RSpec.describe OrderController, type: :controller do
    subject {FactoryBot.build(:order)}
    context "GET orders" do

        it "returns a successful response" do
          get :orders
          expect(response).to be_successful
          expect(response.status).to eq(200) 
        end
        
        it "assigns @orders" do
          get :orders
          expect(assigns(:orders)).to eq(Order.all)
        end
  
        it "renders the index template" do
          get :orders
          expect(response).to render_template("orders")
        end

    end

    context "GET place_order" do
     
     it 'should place order' do 
        order=Order.create()
        session[:order_id]=order.id
        get :place_order, params:  {
          total: 200
        }    
        expect(assigns(:order)).to be_truthy
        expect(flash[:notice]).to match(/Successfully placed order.*/)
        expect(response).to redirect_to items_path
     end
     it "should make order_id nil if order placed" do
      order=Order.create()
      session[:order_id]=order.id
      get :place_order,params: {
        total: 200
      }
      expect(session[:order_id]).to be_falsy  

  end


    end
end
