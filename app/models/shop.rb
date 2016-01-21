class Shop < ApplicationRecord
  belongs_to :shopowner
  has_many :designer
  has_many :shopreview
  belongs_to :mainregion
  belongs_to :subregion
  has_attached_file :image, styles: { medium: '300x300>', thumb: '100x100>' }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  validates :name, presence: true
  validates :phone, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true
  validates :holiday, presence: true
  validates :address, presence: true
  validates :main_image, presence: true
end
