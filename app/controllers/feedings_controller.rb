# frozen_string_literal: true

class FeedingsController < ApplicationController

  def index
    if params[:query].present?
      @fruits = fruits.filter{ |f| f["label"].include?(params[:query])}.first(10)
    else
      @fruits = fruits.first(10)
    end

    render partial: "feedings/search_fruit"
  end

  def create
  end

  def update
  end

  def delete
  end

  def show
  end

  private

  def fruits
    @fruits ||= YAML.load_file(Rails.root.join('data', 'fruits.yaml'))
  end
end
