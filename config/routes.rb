Rails.application.routes.draw do
  resources :albums do
    resources :pictures
  end
  
  resources :contacts, only: [:new, :create]
  
  devise_for :users, :skip => :registration
  as :user do
    get "/admin" => "devise/sessions#new"
  end

  root to: 'albums#index'
end
