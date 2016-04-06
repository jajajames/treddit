class User < ActiveRecord::Base
  has_secure_password
  has_many :things
  has_many :votes
  has_many :comments
  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
end
