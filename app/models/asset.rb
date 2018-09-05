class Asset < ApplicationRecord
  belongs_to :folder, inverse_of: :assets

  validates :name, presence: true, length: { in: 3..25 }
end
