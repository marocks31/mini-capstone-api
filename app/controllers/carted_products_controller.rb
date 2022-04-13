class CartedProductsController < ApplicationController

def create
 pp current_user
  carted_product = CartedProduct.new(
    user_id: current_user.id,
    product_id: params[:product_id],
    status: "carted",
    quantity: params[:quantity],
    order_id: nil
  )

  if carted_product.save
    render json: carted_product.as_json
  else 
    render json: {error_messages: carted_product.errors.full_messages}, status: 422
  end 

end 

def index
  carted_products = current_user.carted_products.where(status: "carted")
  render json: carted_products.as_json
end 


end
