Rails.application.routes.draw do
  get ':/locale', to: 'home#index'
  root 'home#index'
  devise_for :users
end
