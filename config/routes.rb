Rails.application.routes.draw do
  root 'home#index'
  get 'home/index'
  devise_for :users
  resources :products
  match 'show_modal', to: 'orders#show_modal', via: [:get]
  resources :orders
  resources :recipients
end
