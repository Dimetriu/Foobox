class Category < ApplicationRecord
  belongs_to :user, inverse_of: :categories
end
