# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :require_login

  private

  def is_logged_in
    session[:user_id].present? && User.find_by_id(session[:user_id]).present?
  end

  def require_login
    redirect_to login_url unless is_logged_in
  end
end
