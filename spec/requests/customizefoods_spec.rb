require 'rails_helper'

RSpec.describe CustomizefoodsController, type: :controller do
    context "GET customize_food" do 
        it " should add customization to the item" do
          item = FactoryBot.create(:item)
          customization = FactoryBot.create(:customizedfood)
          get :customize_food,params:{
            item_id: item.id,
            add_ons: ["cheese","butter"],
            description:"description"
          }
          expect(response).to redirect_to item_path(item.id)
        end 
        it " already customizaion exits then replace the customization" do 
            item = FactoryBot.create(:item)
            customization = FactoryBot.create(:customizedfood)
            get :customize_food,params:{
              item_id: item.id
            }
            item.customizedfood = customization
            expect(response).to redirect_to item_path(item.id)
        end

    end
end