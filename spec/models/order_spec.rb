require 'rails_helper'

RSpec.describe Order,type: :model do
   
    it "should have many carts" do
      t = Order.reflect_on_association(:carts)
      expect(t.macro).to eq(:has_many)
    end
    
end