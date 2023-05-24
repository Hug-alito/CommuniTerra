Rails.application.routes.draw do
  get 'static_pages/index'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :users, only: [:show]
  resources :plants
  resources :allotments
  resources :listings
  resources :deliveries

  root to: "static_pages#index"

end
