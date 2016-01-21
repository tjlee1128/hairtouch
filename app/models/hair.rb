class Hair < ApplicationRecord
  belongs_to :designer
  belongs_to :mainregion
  belongs_to :subregion
  belongs_to :haircategorycode
  belongs_to :haircategory
  has_many :hairimages, dependent: :destroy

  validates :title, presence: true
  validates :subtitle, presence: true
  validates :detail, presence: true
end
