class Post < ActiveRecord::Base
  has_many :tags
  has_many :categories
  belongs_to :category
  belongs_to :tag
  belongs_to :user

  attr_accessible :last_access_timestamp, :post_content, :post_id, :posted_date, :title
end
