class Folder < ApplicationRecord

  enum access: { private: 0, public: 1 }

  belongs_to :user, inverse_of: :folders
  has_many :assets, inverse_of: :folder
end
