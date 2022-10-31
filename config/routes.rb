Rails.application.routes.draw do
  root 'products#index'
  get '/products/search'

  resources:products

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
end
