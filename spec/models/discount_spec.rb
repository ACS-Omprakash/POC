require 'rails_helper'

RSpec.describe Discount,type: :model do
    it "should have many items" do
      t = Discount.reflect_on_association(:items)
      expect(t.macro).to eq(:has_many)
    end

    it "should have many carts" do
        t = Discount.reflect_on_association(:carts)
        expect(t.macro).to eq(:has_many)
    end

end