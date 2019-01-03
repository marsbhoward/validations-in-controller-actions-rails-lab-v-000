class Author < ActiveRecord::Base
  validates :name, presence: true
  validates :email, uniqueness: true

  if @author.valid?
    @author.save
  else
    render :new
end
