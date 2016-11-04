Rails.application.routes.draw do
  root 'home#index'
  get 'home/index'
  devise_for :users
  resources :products
  resources :orders
  resources :products, :recipients
end
