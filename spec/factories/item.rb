FactoryBot.define do
    factory :item do
      sequence(:itemname) { |n| "itemname#{n}" }
      sequence(:price) { |n| n+0.0}
      sequence(:itemdescription) { |n| "itemdescription#{n}"}
      sequence(:image) { |n| "image#{n}"}
      sequence(:discount_id) { |n| n}
    end
end