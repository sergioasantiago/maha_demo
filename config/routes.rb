Rails.application.routes.draw do
  resources :consultants

  resources :networks

  resources :companies

  devise_for :users

  root :to => 'companies#index'

end
