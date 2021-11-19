class Api::PostsController < ApplicationController

  def index
    render json: { data: Post.all.order(id: :desc) }
  end

  def create
    post = Post.new(content: params[:content])
    if post.save
      render json: { data: post }
    else
      render json: { errors: post.errors.full_messages }
    end
  end

end
