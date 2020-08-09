class Recipe < ApplicationRecord
  belongs_to :categories
  belongs_to :meal_plans

end
