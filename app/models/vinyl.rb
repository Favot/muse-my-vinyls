class Vinyl < ApplicationRecord
  CONDITION = ['Acceptable', 'Good', 'Very good', 'Like new']

  belongs_to :owner, class_name: 'User'
  has_many :rentings

  has_one_attached :photo

  validates :condition, inclusion: { in: CONDITION }

  validates :title, presence: true
  validates :artist, presence: true
  validates :price_per_day, presence: true
end
