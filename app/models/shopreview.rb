class Shopreview < ApplicationRecord
  belongs_to :shop
  belongs_to :member

  validates :detail, presence: true
end
