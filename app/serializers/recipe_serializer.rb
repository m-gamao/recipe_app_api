class RecipeSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :description
  belongs_to :categories
end
