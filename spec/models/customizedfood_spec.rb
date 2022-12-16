require 'rails_helper'

RSpec.describe Customizedfood,type: :model do
    it "belongs_to item" do
        t = described_class.reflect_on_association(:item)
        expect(t.macro).to eq :belongs_to
    end

    it "belongs_to cart" do
      t = described_class.reflect_on_association(:cart)
      expect(t.macro).to eq :belongs_to
    end

    
end