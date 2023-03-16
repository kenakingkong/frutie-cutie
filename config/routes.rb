# frozen_string_literal: true

Rails.application.routes.draw do
  root 'cuties#index'

  get "/login", to: "sessions#login"
  post "/login", to: "sessions#create"
  post "/logout", to: "sessions#destroy"

  resources :users
  
  resources :cuties do
    resources :feedings
  end

end
