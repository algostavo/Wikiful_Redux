class Article < ActiveRecord::Base
  attr_accessible :text, :title
  belongs_to :user
end
