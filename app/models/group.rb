class Group < ApplicationRecord
  has_many :memberships, inverse_of: :group
  has_many :groups, through: :memberships, inverse_of: :groups
end
