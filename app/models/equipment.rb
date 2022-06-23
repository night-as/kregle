class Equipment < ApplicationRecord
  has_many :BowlingBall
  has_many :Shoe
  has_many :Reservation
end
