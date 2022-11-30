class Customizedfood < ApplicationRecord
    seralizer :add_on, Array
    belongs_to :item
end
