class CartedProduct < ApplicationRecord
  
  belongs_to :user_id
  belongs_to :product
  belongs_to :order, optional: true 
  
end
