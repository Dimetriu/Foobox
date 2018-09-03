class Group < ApplicationRecord
  has_many :memberships, inverse_of: :group
  has_many :users, through: :memberships, inverse_of: :groups
end
