FactoryBot.define do
    factory :discount do
      sequence(:name) { "name"}
      sequence(:percentage) {0.20}
    end
end