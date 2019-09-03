Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'
  get "/profile", to: 'pages#profile'
  # get "/user", to: 'pages#user'


  get "/matches", to: "matches#index"
  resources :flats, only: [:index, :new, :show, :create] do
    resources :viewings,  only: [:create]
  end

  resources :users, only: [:index, :show, :edit, :update]  do
    resources :flats, only: [:show]
  end

  resources :matches, only: [:show]
end
