class User < ActiveRecord::Base
  has_secure_password
  has_many :things
  has_many :votes
  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
end
