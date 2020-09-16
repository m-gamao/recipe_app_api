class Favorite < ApplicationRecord
  belongs_to :category
end


# A favorite recipe belongs to a category