Rails.application.routes.draw do
  get "/products", to: 'products#index'
  get "/products/new", to: 'products#new'
  get "/products/:id", to: 'products#show'
  post "/products", to: 'products#create'
  get "/products/:id/edit", to: 'products#edit'
  patch "/products/:id", to: 'products#update'
  delete "/products/:id", to: 'products#destroy'

  get "/signup", to: 'users#new'
  post "/users", to: 'users#create'

  get "/login" => "sessions#new"
  post "/login" => "sessions#create"
  delete "/logout" => "sessions#destroy"

  get "/images", to: 'images#index'
  get "/images/new", to: 'images#new'
  get "/images/:id", to: 'images#show'
  post "/images", to: 'images#create'
  get "/images/:id/edit", to: 'images#edit'
  patch "/images/:id", to: 'images#update'
  delete "/images/:id", to: 'images#destroy'

  
  get "/orders/:id", to: 'orders#show'
  patch "/orders/:id", to: 'orders#update'
  

  get "/cartedproducts", to: 'cartedproducts#index'
  post "/cartedproducts", to: 'cartedproducts#create'
  delete "/cartedproducts/:id", to: 'cartedproducts#destroy'
  
end
