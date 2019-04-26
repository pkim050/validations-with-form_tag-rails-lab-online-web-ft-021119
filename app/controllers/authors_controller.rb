class AuthorsController < ApplicationController
  def show
    @author = Author.find(params[:id])
  end

  def new
    @author = Author.new
  end

  def create
    @author = Author.new(author_params)
    redirect_to @author and return if @author.save

    render :new
  end

  private

  def author_params
    params.permit(:name, :email, :phone_number)
  end
end
