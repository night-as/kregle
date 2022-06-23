class User < ApplicationRecord
  has_one :profiles
  validates :login, presence: true, uniqueness: true, length: { in: 3..50 }
  validates :index, presence: true, uniqueness: true
  has_secure_password
  has_secure_token
    validates :password, presence: true, length: { minimum: 6 }
  def change
    add_index :students, :index, unique: true
  end
  def invalidate_token
  self.update_columns(token: nil)
end
end
