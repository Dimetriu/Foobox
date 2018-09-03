class Category < ApplicationRecord
  belongs_to :user, inverse_of: :categories
  has_many :folders, inverse_of: :category
end
