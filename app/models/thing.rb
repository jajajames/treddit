class Thing < ActiveRecord::Base
  has_many :votes
  validates :link, presence: true, format: { with: /\Ahttp(|s):\/\// }
end
