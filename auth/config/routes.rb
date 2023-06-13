Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :users, only: [:new,:create]
  resource :session, only: [:new,:create,:destroy]
  resources :bands, only: [:show, :update, :destroy]
  # Defines the root path route ("/")
  # root "articles#index"
end
