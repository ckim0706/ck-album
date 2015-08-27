Rails.application.routes.draw do
  devise_for :users, :skip => :registration
  as :user do
    get "/admin" => "devise/sessions#new"
  end

  resources :contacts, only: [:new, :create]

  resources :albums, :path => '', only: [:new, :create, :edit]
  resources :albums, :path => '' do
    resources :pictures, :path => '' 
  end

  root to: 'albums#index'
end
