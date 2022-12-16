 FactoryBot.define do
    factory :cart do
      sequence(:item_id) { |n| n }
      sequence(:quantity) { |n| n }
      sequence(:itemname) { |n| "itemname#{n}" }
      sequence(:unit_price) { |n| n+0.0}
      sequence(:subtotal) { |n| n+0.0}
      sequence(:itemdescription) { |n| "itemdescription#{n}"}
      sequence(:image) { |n| "image#{n}"}
      sequence(:order_id) { |n| n}
      sequence(:discount_id) { |n| n}
    end
end


