class Asset < ApplicationRecord
  belongs_to :folder, inverse_of: :assets
end
