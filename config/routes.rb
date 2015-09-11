Rails.application.routes.draw do


  resources :users
  resources :restaurants do
    resources :reservations, only: [:show, :create, :destroy]
  end
  resources :sessions

  root 'restaurants#index'

end
