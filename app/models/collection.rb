class Collection < ApplicationRecord
  has_many :works
  belongs_to :warehouse
end
