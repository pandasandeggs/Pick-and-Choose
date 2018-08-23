class UsersController < ApplicationController
  before_action :redirect_if_not_logged_in, only: [:index]

  def index
    @user = current_user
  end #index


  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    user = User.create(user_params)

    if !user.valid?
      flash[:error] = user.errors.full_messages[0]
      redirect_to signup_path
    else #
      session[:user_id] = user.id
      redirect_to user_path(user)
    end
  end #create

  def update
    #byebug
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user)
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to login_path
  end

private
  def user_params
    params.require(:user).permit(:username,:email,:email_confirmation,:password,:password_confirmation)
  end

end
