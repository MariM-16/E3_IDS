Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  devise_for :users
  devise_scope :user do  
      get '/users/sign_out' => 'devise/sessions#destroy'     
  end
  
  # Defines the root path route ("/")
  # root "articles#index"

  root "home#index"

  resource :users
  resource :addresses
  resource :orders


end
