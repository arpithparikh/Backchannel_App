class User < ActiveRecord::Base
  attr_accessible :email_id, :name, :phone, :role, :user_id
end
