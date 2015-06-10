class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
    # debugger  Use to debug in the server command prompt
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user # Logs in user when created at signup.
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
    else
      render 'new'
    end
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end



end
