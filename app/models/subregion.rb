class Subregion < ApplicationRecord
  belongs_to :mainregion

  validates :name, presence: true
end
