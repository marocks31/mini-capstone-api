class Product < ApplicationRecord

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :price, presence: true
  validates :price, numericality: { greater_than: 0 }
  validates :description, presence: true 
  validates :description, length: { in: 10..500 }

  has_many :orders 
  has_many :category_products
  has_many :categories, through: :category_products
  has_many :carted_products
  has_many :orders, through: :carted_products
  belongs_to :supplier 
  has_many :images

  def is_discounted?
    if price < 10
      return "On sale"
    else false 
    end 
   
  end

  def tax
    taxed_product = (price * 0.09).round(2)
  end

  def total
    "$ #{price + tax}"
  end 

end
