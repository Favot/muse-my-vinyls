class Renting < ApplicationRecord
  STATUS = %w[pending accepted declined]

  belongs_to :renter, class_name: 'User'
  belongs_to :vinyl

  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :status, inclusion: { in: STATUS }
end
