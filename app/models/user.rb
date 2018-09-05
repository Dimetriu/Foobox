class User < ApplicationRecord

  has_many :memberships, inverse_of: :user
  has_many :groups, through: :memberships, inverse_of: :users
  has_many :categories, inverse_of: :user

  validates :email, :password, :username, presence: true
  validates :username, length: { in: 3..25 }

  devise :database_authenticatable,
         :registerable,
         :recoverable,
         :rememberable,
         :validatable,
         :trackable
end
