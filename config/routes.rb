Rails.application.routes.draw do
  get 'allotments/new'
  get 'allotments/create'
  get 'allotments/show'
  get 'allotments/index'
  get 'allotments/edit'
  get 'allotments/update'
  get 'allotments/destroy'
  get 'allotment/new'
  get 'allotment/create'
  get 'allotment/show'
  get 'allotment/index'
  get 'allotment/edit'
  get 'allotment/update'
  get 'allotment/destroy'
  get 'static_pages/index'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :plants
  resources :allotments

  root to: "static_pages#index"

end
