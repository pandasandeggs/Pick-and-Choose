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
  end

  def tag_count
    Tag.all.map do |tag|
      tag.pictures.length
    end
  end

end
