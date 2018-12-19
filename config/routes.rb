Rails.application.routes.draw do
  root 'promises#index'

  resources :promises, only: [:show, :new, :create, :edit]
end
