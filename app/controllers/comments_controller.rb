class CommentsController < ApplicationController


  def create
    @comment= Comment.create(comments_params)
    @post=Post.find(@comment.post_id)
    redirect_to @post
  end


  private


  def comments_params
    params.require(:comment).permit(:content, :post_id)
  end

end
