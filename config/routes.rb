Rails.application.routes.draw do

  devise_for :networks, :consultants, :companies, :admins

  scope '/admin' do
    resources :companies, :consultants, :networks
  end

  get 'admins/index'

  get 'consultants/profile'

  get 'networks/profile'

  get 'companies/profile'

  root to: 'index#index'

end