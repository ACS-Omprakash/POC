 FactoryBot.define do
    factory :cart do
      sequence(:item_id) { 1 }
      sequence(:quantity) { 2 }
      sequence(:itemname) { "itemname" }
      sequence(:unit_price) { 200}
      sequence(:subtotal) { 400}
      sequence(:itemdescription) { "itemdescription"}
      sequence(:image) { "image"}
      sequence(:order_id) { |n| n}
      sequence(:discount_id) {1}
    end
end


