class Mainregion < ApplicationRecord
  has_many :subregion
  has_many :shop

  validates :name, presence: true
end
