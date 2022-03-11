class ProductsController < ApplicationController


    def one_item_method
    product = Product.find params[:id]
    render json: product.as_json
    end

    def all_items_method
      products = Product.all
      render json: products.as_json
    end 
 end 
