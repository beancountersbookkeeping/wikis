Rails.application.routes.draw do

 

  devise_for :users
  root 'wikis#index'
  
  resources :wikis
  resources :users
  
  resources :charges, only: [:new, :create]
end
