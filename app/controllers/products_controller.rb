class ProductsController < ApplicationController


    def show
    product = Product.find_by(id: params["id"])
    render json: product 
    end

    def create
      product = Product.new(
        name: params["name"],
        price: params["price"],
        image_url: params["image_url"],
        description: params["description"]
      )
      
      if product.save #happy
      render json: product
      else  #sad
        render json: {error_messages: product.errors.full_messages},
        status: 422
      end 
    end 

    def update
      product_id = params["id"]
      product = Product.find(product_id)
      product.name = params["name"] ||product.name
      product.price = params["price"] || product.price
      product.image_url = params["image_url"] || product.image_url
      product.description = params["description"] || product.description

      if product.save #happy
      render json: product
      else #sad
        render json: {error_messages: product.errors.full_messages}, status: 422
      end 
    end 

    def index 
      products = Product.all
      render json: products
    end 

    def destroy
      product_id = params["id"]
      product = Product.find_by(id: product_id)
      product.destroy
      render json: {message: "This is no longer available"}
    end 
 end 
