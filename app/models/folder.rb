class Folder < ApplicationRecord

  enum access: { individual: 0, widespread: 1 }

  belongs_to :category, inverse_of: :folders
  has_many :assets, inverse_of: :folder

  has_closure_tree order: 'name'

  validates :name, presence: true, length: { in: 3..25 }
end
