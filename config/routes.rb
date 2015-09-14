Rails.application.routes.draw do


  resources :users
  resources :restaurants do
    resources :reservations, only: [:show, :edit, :create, :destroy]
  end
  resources :sessions, only: [:new, :create, :destroy]

  root 'restaurants#index'
end
