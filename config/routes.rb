Rails.application.routes.draw do
  resources :gorilla_glasses
  resources :products
  resources :customers
  resources :retailers
  resources :oem_manufacturers
  resources :suppliers
  # get "home/index"
  get "up" => "rails/health#show", as: :rails_health_check
  root 'home#index'
end
