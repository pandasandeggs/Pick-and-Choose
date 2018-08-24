class PicturesController < ApplicationController
  def index
    @pictures = Picture.all
  end

  def show
    byebug
    @picture = Picture.find(params[:id])
    session[:picture_id] = @picture.id
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

  def destroy
    @picture = Picture.find(params[:id])
    @picture.destroy
    redirect_to user_path(current_user)
  end

  # def destroy
  #   if params[:id] == current_user
  #       @picture = Picture.find(params[:id])
  #       @picture.destroy
  #       redirect_to user_path(current_user)
  #   else
  #     flash[:error] = "Nice try!  You do not have permission to delete this photo!"
  #     redirect_to user_path(current_user)
  #   end
  # end

private
  def picture_params
    params.require(:picture).permit(:image_url, :title, :user_id, comment_ids: [], tag_ids: [])
  end

end
