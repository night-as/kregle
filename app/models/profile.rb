class Profile < ApplicationRecord
  belongs_to :user
  belongs_to :role
  has_many :reservations
end
