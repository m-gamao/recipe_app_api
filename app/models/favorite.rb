class Favorite < ApplicationRecord
  #belongs_to :serving
  has_many :likes
end


# A favorite recipe belongs to a category