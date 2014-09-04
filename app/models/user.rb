class User < ActiveRecord::Base
  has_secure_password
  attr_accessible :name, :email, :password
  attr_accessor :password

  
  validate :password, :presence => true
  validates :email, :presence => true 
  validates :name,  :presence => true 
  
  
end
