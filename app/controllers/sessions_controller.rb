class SessionsController < ApplicationController
  def new
  end

  def create
    #find the user with that Username
    user = User.find_by(username: params[:username])

    #check if password is legit
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to user_path(user)
    else
      flash[:error] = "Your username and/or password are invalid. Try again."
      redirect_to login_path
    end

  end #create

  def destroy
    session[:user_id] = nil
    #flash[:success] = “Successfully Logged Out!”
    redirect_to login_path
  end

end #class
