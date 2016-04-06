class Thing < ActiveRecord::Base
  has_many :votes
  has_many :comments
  belongs_to :user
  validates :link, presence: true, format: { with: /\Ahttp(|s):\/\// }
end
