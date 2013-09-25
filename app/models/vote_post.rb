class VotePost < ActiveRecord::Base
  belongs_to :post
  belongs_to :user
  attr_accessible :vote_post_count
end
