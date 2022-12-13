class Item < ApplicationRecord
    has_one :customizedfood
    belongs_to :discount,optional:true
end
