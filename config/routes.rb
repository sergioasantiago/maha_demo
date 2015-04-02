Rails.application.routes.draw do

  resources :consultants

  devise_for :companies, :networks, :consultants

  resources :networks

  resources :companies

  root :to => 'companies#index'

end
