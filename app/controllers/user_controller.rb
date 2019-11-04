class UserController < ApplicationController



  def new
    @user = User.new
  end
end

def create
    @user = User.new user_params
    if @user.save # Returns truthy value on success
      session[:user_id] = @user.id
      redirect_to root_path
    else
      render :new
    end
  end

  private
def user_params
  params.require(:user).permit(:email, :password, :password_confirmation)
end