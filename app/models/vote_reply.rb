class VoteReply < ActiveRecord::Base
  belongs_to :reply
  belongs_to :user
  attr_accessible :vote_reply_count
end
