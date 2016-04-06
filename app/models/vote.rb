class Vote < ActiveRecord::Base
  belongs_to :thing, counter_cache: true
  belongs_to :user
end
