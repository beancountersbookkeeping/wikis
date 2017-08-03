Rails.application.routes.draw do

 

  devise_for :users
  root 'wikis#index'
  
  resources :wikis
  resources :users
  resources :collaborators
  
  resources :charges, only: [:new, :create]
end
