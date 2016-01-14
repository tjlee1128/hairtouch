class Subregion < ApplicationRecord
  belongs_to :mainregion
  has_many :shop
  has_many :designer

  validates :name, presence: true
end
