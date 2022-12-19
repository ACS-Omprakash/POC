FactoryBot.define do
    factory :item do
      sequence(:itemname) {  "itemname" }
      sequence(:price) { 100 }
      sequence(:itemdescription) { "itemdescription"}
      sequence(:image) { "image"}
      sequence(:discount_id) { 1}
    end
end