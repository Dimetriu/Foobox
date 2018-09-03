class Folder < ApplicationRecord

  enum access: { private: 0, public: 1 }

  belongs_to :user, inverse_of: :folders
end
