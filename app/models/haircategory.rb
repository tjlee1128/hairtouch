class Haircategory < ApplicationRecord
  belongs_to :haircategorycode
  has_many :hairs

  validates :name, presence: true
end
