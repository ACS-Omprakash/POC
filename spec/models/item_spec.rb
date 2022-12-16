require 'rails_helper'

RSpec.describe Item,type: :model do
    it "should have one customizedfood" do
      t = Item.reflect_on_association(:customizedfood)
      expect(t.macro).to eq(:has_one)
    end

    it "belongs_to discount" do
      t = described_class.reflect_on_association(:discount)
      expect(t.macro).to eq :belongs_to

    end
end