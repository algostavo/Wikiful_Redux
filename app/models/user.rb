class User < ActiveRecord::Base
  attr_accessible :name, :email, :password
    
  validates :email, :presence => true 
  validates :name,  :presence => true 
  validates :password,  :presence => true
  

end
