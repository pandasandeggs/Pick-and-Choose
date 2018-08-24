class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end

  def show
  end

  def edit
    @comment = Comment.find(params[:id])
    redirect_to edit_comment_path(@comment)
  end

  def update
    @comment = Comment.find(params[:id])
    @comment.update(comment_params)
    redirect_to user_path(current_user)
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

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to user_path(current_user)
  end

private
  def comment_params
    params.require(:comment).permit(:message, :picture_id, :user_id)
  end

end
