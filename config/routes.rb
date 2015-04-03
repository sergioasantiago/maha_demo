Rails.application.routes.draw do

  devise_for :networks, class_name: "Admin::Network"
  devise_for :consultants, class_name: "Admin::Consultant"
  devise_for :companies, class_name: "Admin::Company"
  devise_for :admins, class_name: "Admin::Admin"

  namespace :admin do

    root to: 'index#index'

    resources :consultants

    resources :networks

    resources :companies
  end

  resources :consultants



  root to: 'index#index'

end
