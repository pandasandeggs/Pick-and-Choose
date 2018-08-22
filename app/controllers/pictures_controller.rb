class PicturesController < ApplicationController
  def index
    @pictures = Picture.all
  end

  def show
    @picture = Picture.find(params[:id])
  end

  def edit
  end

  def new
    @picture = Picture.new
  end

  def create
    @picture = Picture.new(picture_params)
    @picture.user = current_user
    @picture.save
    redirect_to user_path(current_user)
  end

private
  def picture_params
    params.require(:picture).permit(:image_url, :title, tag_ids: [])
  end

end
