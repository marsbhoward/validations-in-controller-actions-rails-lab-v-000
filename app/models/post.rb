class Post < ActiveRecord::Base
  validates :title, presence: true
  #validates :category 
  validates :content legnth: {minimum: 100} 
end
