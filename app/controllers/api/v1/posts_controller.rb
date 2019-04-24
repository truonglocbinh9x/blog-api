class Api::V1::PostsController < ApplicationController
  before_action :load_post, only: :show
  def index
    page = params[:page].present? ? params[:page].to_i : 1
    @posts = Post.includes(:comments).page(page).per(4)
    # byebug
    @total_page = @posts.total_pages
    render json: {
      posts: @posts,
      total_page: @total_page
    }
    # byebug
    # options = {include: [:comments]}
    # render json: PostSerializer.new(@posts, options)
  end

  def show
    render json: @post, include: ['comments']
  end

  private
  def load_post
    @post = Post.find params[:id]
  end
end
