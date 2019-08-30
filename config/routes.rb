Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'
  get "/profile", to: 'pages#profile'

  resources :flats, only: [:index, :new, :show, :create] do
    resources :viewings,  only: [:create]
  end

  resources :users, only: [:index, :new, :show, :create]  do
    resources :flats, only: [:show]
  end
end
