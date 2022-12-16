require 'rails_helper'

RSpec.describe Cart,type: :model do
    it "should have one customizedfood" do
      t = Cart.reflect_on_association(:customizedfood)
      expect(t.macro).to eq(:has_one)
    end

    it "belongs_to discount" do
      t = described_class.reflect_on_association(:discount)
      expect(t.macro).to eq :belongs_to
    end

    it "belongs_to order" do
      t = described_class.reflect_on_association(:order)
      expect(t.macro).to eq :belongs_to
    end
end