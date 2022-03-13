Rails.application.routes.draw do
  get "/products/:id"=> "products#show"

  post "/products"=> "products#create"

  get "/products"=> "products#index"
end
