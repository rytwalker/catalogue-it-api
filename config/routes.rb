# frozen_string_literal: true

Rails.application.routes.draw do
  resources :collections
  namespace :api do
    namespace :v1 do
      resources :users
    end
  end
end
