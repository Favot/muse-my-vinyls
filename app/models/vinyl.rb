class Vinyl < ApplicationRecord
  CONDITION = ['Acceptable', 'Good', 'Very good', 'Like new']

  belongs_to :owner, class_name: 'Users'
  has_many :rentings

  validates :condition, inclusion: { in: CONDITION }

  validates :title, presence: true
  validates :artist, presence: true
  validates :price_per_day, presence: true
end
