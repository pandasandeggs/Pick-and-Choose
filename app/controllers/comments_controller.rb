class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end

  def show
  end

  def edit
  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.user = current_user
    @comment.picture_id = session[:picture_id]
    @comment.save
    redirect_to @comment.picture
  end

private
  def comment_params
    params.require(:comment).permit(:message, :picture_id, :user_id)
  end

end
