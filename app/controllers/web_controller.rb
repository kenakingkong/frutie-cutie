class WebController < ApplicationController
  def menu
    render partial: "shared/menu"
  end
end
