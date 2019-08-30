Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'
  get "/profile", to: 'pages#profile'
  get "/matches", to: "matches#index"

  resources :flats, only: [:new, :show, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users do
    resources :flats, only: [:show]
  end

  resources :matches, only: [:show]

end
