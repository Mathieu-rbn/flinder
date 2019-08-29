Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'
  get "/profile", to: 'pages#profile'

  resources :flats, only: [:new, :show, :create] do
    resources :viewings,  only: [:new]
  end



  resources :users do
    resources :flats, only: [:show]
  end
end
