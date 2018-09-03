class User < ApplicationRecord

  has_many :categories, inverse_of: :user

  devise :database_authenticatable,
         :registerable,
         :recoverable,
         :rememberable,
         :validatable,
         :trackable
end
