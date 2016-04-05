class User < ActiveRecord::Base
  has_secure_password
  has_many :things
  has_many :votes
  validates :username, presence: true
  validates :email, presence: true
end
