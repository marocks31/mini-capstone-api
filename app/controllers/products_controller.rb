class ProductsController < ApplicationController

  class Products

    def one_item_method
      render json: "hi"
    end

    def all_items_method
      render json: "bye"
    end 
  end 
end
