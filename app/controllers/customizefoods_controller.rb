class CustomizefoodsController < ApplicationController

    def customize_food
        @item = Item.find(params[:item_id])
        if @item.customizedfood.present?
            @item.customizedfood.add_ons = params[:add_ons]
            @item.customizedfood.description = params[:message]
            @item.customizedfood.save
        else 
            @customize_food = Customizedfood.create(
            :add_ons => params[:add_ons],
            :description => params[:message],
            :item_id => params[:item_id]
            )
        end
       redirect_to item_path(@item.id)
            
    end
    
end
