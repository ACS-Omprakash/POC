FactoryBot.define do
    factory :customizedfood do
      sequence(:top_ups) { |n| "top_ups#{n}" }
      sequence(:description) { |n| "description#{n}"}
      sequence(:item_id) { |n| n}
      sequence(:add_ons) { |n| "add_ons#{n}"}
      sequence(:cart_id) { |n| n}
    end
end