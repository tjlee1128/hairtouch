class Haircategorycode < ApplicationRecord
  has_many :haircategory

  validates :name, presence: true
end
