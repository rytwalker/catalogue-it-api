# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users
      resources :collections
      resources :collectables
    end
  end
end
