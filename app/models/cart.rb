class Cart < ApplicationRecord
  has_one :customizedfood
  belongs_to :discount,optional:true
  belongs_to :order,optional: true 
end