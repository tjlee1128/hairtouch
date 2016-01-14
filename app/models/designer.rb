class Designer < ApplicationRecord
  belongs_to :shop
  has_many :designerreview
  belongs_to :mainregion
  belongs_to :subregion

  validates :name, presence: true
  validates :phone, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true
  validates :reservation_type, presence: true
  validates :main_image, presence: true
end
