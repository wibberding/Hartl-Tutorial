class UsersController < ApplicationController
  def new
  end

  def show
    @user = User.find(params[:id])
    # debugger  Use to debug in the server command prompt
  end
end
