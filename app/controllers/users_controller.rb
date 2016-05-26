class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params.merge(judge: false))

    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      render 'new'
    end
  end

  def update
    @user = User.find(params[:id])

    if @user.update(user_params)
    	redirect_to @user
    else
    	render 'edit'
    end
  end

  private
    def user_params
      params.require(:user).permit(:username, :email, :password)
    end
end
