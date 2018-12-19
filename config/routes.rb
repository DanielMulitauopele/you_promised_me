Rails.application.routes.draw do
  get '/' => 'promises#index'

  resources :promises, only: [:show]
end
