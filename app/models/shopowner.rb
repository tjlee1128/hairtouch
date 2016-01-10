class Shopowner < ApplicationRecord
  has_many :shop

  validates :email, presence: true
  validates :password, presence: true
  validates :name, presence: true
  validates :phone, presence: true
end
