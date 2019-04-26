class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    redirect_to @post and return if @post.save
    render :new
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])

    redirect_to @post and return if @post.update(post_params)

    render :edit
  end

  private

  def post_params
    params.permit(:title, :category, :content)
  end
end
