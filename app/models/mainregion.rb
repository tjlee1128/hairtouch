class Mainregion < ApplicationRecord
  has_many :subregion
  has_many :shop
  has_many :designer
  has_many :hairs

  validates :name, presence: true
end
