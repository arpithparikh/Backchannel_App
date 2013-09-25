class Login < ActiveRecord::Base
  belongs_to :user
  attr_accessible :pwd
end
