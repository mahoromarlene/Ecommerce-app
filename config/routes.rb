Rails.application.routes.draw do
  get "/products", to: 'products#all_products'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
