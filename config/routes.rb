Rails.application.routes.draw do

  devise_for :networks, :companies, :consultants, :admins

  resources :consultants

  resources :networks

  resources :companies

  root to: 'index#index'

end
