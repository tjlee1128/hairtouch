class Shop < ApplicationRecord
  belongs_to :shopowner
  has_many :designer

  validates :name, presence: true
  validates :phone, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true
  validates :holiday, presence: true
  validates :address, presence: true
  validates :main_image, presence: true
end
