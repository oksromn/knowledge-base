Rails.application.routes.draw do
  devise_for :users

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :notes

  # Defines the root path route ("/")
  root "notes#index"
end
