class Author < ActiveRecord::Base
  validates :name, presence: true
  validates :email, uniqueness: true

  if @author.valid?
  else
    render :new
end
