class Discount < ApplicationRecord
    has_many :items
    has_many :carts
end
