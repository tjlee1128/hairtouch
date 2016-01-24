class Subregion < ApplicationRecord
  belongs_to :mainregion
  has_many :shop
  has_many :designer
  has_many :hairs

  validates :name, presence: true
end
