# frozen_string_literal: true
require 'yaml'

module ApplicationHelper
  def logged_in
    !!session[:user_id]
  end

  def current_user
    @current_user ||= User.find_by_id(session[:user_id]) if logged_in
  end

  def fruits
    @fruits ||= YAML.load_file(Rails.root.join('data', 'fruits.yaml'))
  end
end

