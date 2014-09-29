class User < ActiveRecord::Base
  validates :username, presence: true, uniqueness: true   #validation runs on save
end