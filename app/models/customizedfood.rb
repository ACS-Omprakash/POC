class Customizedfood < ApplicationRecord
    belongs_to :item,optional: true
    belongs_to :cart,optional: true
    serialize :add_ons, Array
    ADD_ONS = %i[cheese tomato butter coriander]
end
