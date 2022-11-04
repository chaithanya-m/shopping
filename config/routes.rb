Rails.application.routes.draw do
  root 'products#index'

  resources :products do
    collection do
      get '/products/search'
    end

  end
  resources :carts do
  end
  resources :cart_items do
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
end
