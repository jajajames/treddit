class Thing < ActiveRecord::Base
  has_many :votes
  belongs_to :user
  validates :link, presence: true, format: { with: /\Ahttp(|s):\/\// }
end
