Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/one_item", controller: "product", action: "one_item_method"

  get "/all_items", controller: "product", action: "all_items_method"
end
