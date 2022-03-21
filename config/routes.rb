Rails.application.routes.draw do  
  get "/products/:id"=> "products#show"

  post "/products"=> "products#create"

  patch "/products/:id"=> "products#update"

  get "/products"=> "products#index"

  delete "/products/:id"=> "products#destroy"

  #user route
  post "/users" => "users#create"
  
  #sessions route
  post "/sessions" => "sessions#create"
  
end
