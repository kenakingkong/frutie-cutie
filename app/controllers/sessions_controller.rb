class SessionsController < ApplicationController
  skip_before_action :require_login, except: [:destroy]

  def login
  end

  def create
    @user = User.find_by(phone: params[:phone])

    if @user.present?
      session[:user_id] = @user.id
      redirect_to root_path
    else
      message = "couldnt log in"
      redirect_to login_path, notice: message
    end
  end

  def destroy
  end
end
