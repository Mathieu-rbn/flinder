Rails.application.routes.draw do
  get 'flats/show'
  devise_for :users
  root to: 'pages#home'

  resources :flats, only: [:show]
end
