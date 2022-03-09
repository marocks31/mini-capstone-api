class ProductsController < ApplicationController

  class Products

    def one_item
      render json: "hi"
    end

    def all_items
      render json: "bye"
    end 
  end 
end
