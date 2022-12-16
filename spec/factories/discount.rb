FactoryBot.define do
    factory :discount do
      sequence(:name) { |n| "name#{n}"}
      sequence(:percentage) { |n| n+0.0}
      sequence(:cart_id) { |n| n}
    end
end