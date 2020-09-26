class Serving < ApplicationRecord
  has_many :favorites
end


# A category has many favorite recipes in it.