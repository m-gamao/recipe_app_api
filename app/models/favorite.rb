class Favorite < ApplicationRecord
  #belongs_to :serving
  has_many :likes
  validates :recipe_name, presence: true, uniqueness: true
end


# A favorite recipe belongs to a category