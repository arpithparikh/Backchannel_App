class Tag < ActiveRecord::Base
  belongs_to :user
  attr_accessible :tag_id, :tag_name
end
