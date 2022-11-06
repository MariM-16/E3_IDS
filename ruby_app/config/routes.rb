Rails.application.routes.draw do
  resources :order_products
  resources :comments
  resources :products
  resources :vehicles
  
  devise_for :users

  devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy'     
  end

    resources :users
  

  root "home#index"

  resources :addresses
  resources :orders

  resources :products do
    resource :order_product
  end

  resources :users do
    resources :addresses
  end

  resources :users do
    resources :orders
  end
end
