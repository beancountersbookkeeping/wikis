Rails.application.routes.draw do
  resources :wikis

  get 'welcome/index'

  devise_for :users
  root 'welcome#index'
end
