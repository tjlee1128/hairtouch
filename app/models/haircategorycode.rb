class Haircategorycode < ApplicationRecord
  has_many :haircategory
  has_many :hairs

  validates :name, presence: true
end
