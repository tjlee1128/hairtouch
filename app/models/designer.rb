class Designer < ApplicationRecord
  belongs_to :shop
  has_many :designerreview
  has_many :hairs
  belongs_to :mainregion
  belongs_to :subregion
  has_attached_file :image, styles: { medium: '300x300>', thumb: '100x100>' }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  validates :name, presence: true
  validates :phone, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true
  validates :reservation_type, presence: true
  validates :main_image, presence: true
end
