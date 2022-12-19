FactoryBot.define do
    factory :customizedfood do
      sequence(:top_ups) { "top_ups" }
      sequence(:description) { "description"}
      sequence(:item_id) {1}
      sequence(:add_ons) {["cheese","butter"]}
      sequence(:cart_id) { |n| n}
    end
end