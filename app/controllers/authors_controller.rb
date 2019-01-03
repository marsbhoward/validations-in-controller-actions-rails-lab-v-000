class AuthorsController < ApplicationController
  def show
    @author = Author.find(params[:id])
  end

  def new
  end

  def create
    if @author.valid?
        
      @author = Author.create!(author_params)

      redirect_to author_path(@author)
    else
    #render :new
  end

  private

  def author_params
    params.permit(:email, :name)
  end
end
