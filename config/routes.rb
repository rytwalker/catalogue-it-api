# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users
      resources :collections
      resources :collectables
    end
  end

  post 'refresh', controller: :refresh, action: :create
  post 'signin', controller: :signin, action: :create
  post 'signout', controller: :signout, action: :create
  delete 'signin', controller: :signin, action: :destroy
end
