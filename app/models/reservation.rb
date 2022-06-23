class Reservation < ApplicationRecord
  belongs_to :profile
  has_many :track
  has_many :equipment
end
