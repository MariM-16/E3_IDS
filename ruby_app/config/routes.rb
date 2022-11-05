Rails.application.routes.draw do
  resources :users
  resources :order_products
  resources :comments
  resources :products
  resources :vehicles
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  devise_for :users
  #resources :users, only: [:show]

  devise_scope :user do  
      get '/users/sign_out' => 'devise/sessions#destroy'     
  end
  
  # Defines the root path route ("/")
  # root "articles#index"

  root "home#index"

  resources :addresses
  resources :orders

  resources :users do
    resources :addresses
  end

  resources :users do
    resources :orders
  end
end
