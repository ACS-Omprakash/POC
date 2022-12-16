FactoryBot.define do
    factory :order do
     sequence(:total) { |n| n+0.0}
    end
end