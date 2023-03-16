# frozen_string_literal: true

class CutiesController < ApplicationController
  before_action :set_cutie, except: [:index]

  def index
  end

  def show
  end

  def update
    if @cutie.update cutie_params
      redirect_to cutie_path(@cutie)
    else
    end
  end

  def delete
  end

  private

  def cutie_params
    params.require(:cutie).permit(:name, :character, :level)
  end

  def set_cutie
    @cutie ||= Cutie.find params[:id]
  end
end
