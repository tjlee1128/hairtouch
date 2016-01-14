class Subregion < ApplicationRecord
  belongs_to :mainregion
  has_many :shop

  validates :name, presence: true
end
