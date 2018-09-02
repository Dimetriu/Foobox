Rails.application.routes.draw do
  get ':/locale', to: 'home#index'
  root 'home#index'
end
