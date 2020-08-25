class User < ApplicationRecord
  has_many :recipes

  # Favorite recipes of user
  has_many :favorite_recipes # just the 'relationships'
  has_many :favorites, through: :favorite_recipes, source: :recipe # the actual recipe


    validates :name, presence: true
    EMAIL_FORMAT_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, format: { with: EMAIL_FORMAT }, uniqueness: true
  
    before_save { self.email = email.downcase }
  
    has_secure_password
  end