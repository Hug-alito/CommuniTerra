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

  resources :posts do 
    resources :comments, only: [:create, :update, :destroy]
    resources :likes, only: [:create, :destroy]
  end

  root to: "static_pages#index"

end
