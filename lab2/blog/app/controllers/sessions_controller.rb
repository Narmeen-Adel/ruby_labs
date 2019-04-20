class SessionsController < ApplicationController
  def login
  end

  def login_attempt
    authorized_user = User.authenticate(user_params)
    if authorized_user
      # flash[:notice] = "Wow Welcome again, you logged in as #{authorized_user.username}"
      # redirect_to(:action => 'home')
    else
      # flash[:notice] = "Invalid Username or Password"
      # flash[:color]= "invalid"
      render "login"	
    end
  end

  def home
  end

  def profile
  end

  def setting
  end
  private
  def user_params
      params.require(:user).permit(:username_or_email, :login_password)
  end
end
