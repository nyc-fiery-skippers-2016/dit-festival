class SessionsController < ApplicationController
	def new  
  end

  def create
    @user = User.find_by(username: params[:sessions][:username])

    if @user && @user.authenticate(params[:sessions][:password])
      session[:user_id] = @user.id
      redirect_to root_path
    else
      flash.now[:error] = "Invalid username/password combination"
      render 'new'
    end
  end

  def destroy
    session.delete(:user_id)
    @current_user = nil
    redirect_to root_path
  end
end
