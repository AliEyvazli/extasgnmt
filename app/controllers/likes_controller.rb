class LikesController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @like = @post.likes.build(user: current_user)
    if @like.save
      redirect_to root_path, notice: 'You liked this post.'
    else
      redirect_to root_path, alert: 'Unable to like this post.'
    end
  end
end
