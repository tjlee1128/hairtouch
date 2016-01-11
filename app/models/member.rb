class Member < ApplicationRecord
  has_many :shopreview
  has_many :designerreview

  validates :email, presence: true
  validates :password, presence: true
  validates :name, presence: true
  validates :phone, presence: true
  validates :birthday, presence: true
  validates :gender_type, presence: true
  validates :main_image, presence: true
end
