class Haircategory < ApplicationRecord
  belongs_to :haircategorycode

  validates :name, presence: true
end
