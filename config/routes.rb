Rails.application.routes.draw do
  resources :albums do
    resources :pictures
  end
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
