class User < ApplicationRecord

  has_many :memberships, inverse_of: :user
  has_many :groups, through: :memberships, inverse_of: :users
  has_many :categories, inverse_of: :user

  devise :database_authenticatable,
         :registerable,
         :recoverable,
         :rememberable,
         :validatable,
         :trackable
end
