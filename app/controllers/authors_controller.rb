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

  def edit
    @author = Author.find(params[:id])
  end

  def update
    @author = Author.find(params[:id])
    redirect_to @author and return if @author.update(author_params)
    render :edit
  end

  private

  def author_params
    params.permit(:name, :email, :phone_number)
  end
end
