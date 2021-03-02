class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one_attached :photo

  #  As Owner
  has_many :vinyls, foreign_key: :owner_id
  has_many :incomming_rentings, through: :vinyls, source: :rentings

  # As renter
  has_many :rentings, foreign_key: :renter_id

  validates :first_name, presence: true
  validates :last_name, presence: true
end
