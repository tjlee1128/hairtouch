class Mainregion < ApplicationRecord
  has_many :subregion
  has_many :shop
  has_many :designer

  validates :name, presence: true
end
