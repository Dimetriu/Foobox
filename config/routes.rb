Rails.application.routes.draw do
  # get ':/locale', to: 'home#index'
  root 'home#index'

  get 'dashboard', action: :index, controller: 'dashboard'

  devise_for :users
end
