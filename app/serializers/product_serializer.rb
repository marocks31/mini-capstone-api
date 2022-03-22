class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :description, :is_discounted?, :tax, :total, :quantity, :supplier, :images
  
  belongs_to :supplier
  has_many :images
  belongs_to :user
end
