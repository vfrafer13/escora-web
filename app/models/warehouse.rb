class Warehouse < ApplicationRecord
  has_many :collections
  has_many :works
end
