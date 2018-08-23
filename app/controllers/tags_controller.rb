class TagsController < ApplicationController
  def index
    @tags = Tag.all
  end

  def show
    @tag = Tag.find(params[:id])
  end

  def edit
  end

  def new
    @tag = Tag.new
  end

  def create
    @tag = Tag.new(tag_params)
    @tag.user = current_user
    @tag.save
    redirect_to_user_path(current_user)
  end

  private
    def tag_params
      params.require(:tag).permit(:name)
    end

end
