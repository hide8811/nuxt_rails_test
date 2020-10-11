class Api::V1::HelloController < ApplicationController
  def index
    post = Post.select(:test)
    render json: post
  end

  def create
    post = Post.new(post_params)
    post.save
  end

  privarte

  def post_params
    params.require(:post).permit(:text)
  end
end
