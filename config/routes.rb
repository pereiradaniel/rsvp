Rails.application.routes.draw do

  resources :users
  resources :restaurants, only: [:index, :show, :new, :create]

end
