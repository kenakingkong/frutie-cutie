# frozen_string_literal: true

class UsersController < ApplicationController
  before_action :set_user

  def show
  end

  def update
    if @user.update user_params
      redirect_to user_path(@user)
    else
      # idk
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :birthday)
  end

  def set_user
    @user ||= User.find(params[:id])
  end
end
