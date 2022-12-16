require 'rails_helper'

RSpec.describe ItemsController, type: :controller do
    subject {FactoryBot.build(:item)}
    context "GET index" do

        it "returns a successful response" do
          get :index
          expect(response).to be_successful
          expect(response.status).to eq(200) 
        end
        
        it "assigns @items" do
          get :index
          expect(assigns(:items)).to eq(Item.all)
        end
  
        it "renders the index template" do
          get :index
          expect(response).to render_template("index")
        end

    end 

    context "GET new" do 
        
        it "returns a successful response" do
            get :new
            expect(response).to be_successful
            expect(response.status).to eq(200) 
        end

        it "assigns @item" do
            get :new
            expect(assigns(:item)).to be_a_new(Item)
        end

        it "renders the new template" do
            get :new
            expect(response).to render_template("new")
            expect(response.body).to eq ""
        end

    end 

    context "POST create" do 
        it 'creates the new item all details are given' do
            post :create, params: {item: {
                    itemname: subject.itemname,
                    price: subject.price,
                    itemdescription: subject.itemdescription,
                    image: subject.image,
                    discount_id: subject.discount_id
            }}
            expect(assigns(:item).save).to be_truthy
            expect(response).to redirect_to item_url(assigns(:item))
        end
    end 

    context 'GET show' do
       it 'should show the item with its details' do
          item1 = FactoryBot.create(:item)
          get :show, params: { id: item1.id }
          expect(response).to render_template :show  
      end
    end



 
end