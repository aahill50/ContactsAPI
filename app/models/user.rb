class User < ActiveRecord::Base
  validates :name, presence: true   #validation runs on save
  validates :email, presence: true  #validation runs on save
end