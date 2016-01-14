class Mainregion < ApplicationRecord
  has_many :subregion

  validates :name, presence: true
end
