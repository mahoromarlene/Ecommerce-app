class Product < ApplicationRecord
  belongs_to :supplier 
  has_many :images 
  has_many :categories, through: :category_products
  has_many :category_products
  has_many :orders, through: :carted_products
  has_many :carted_products

  def friendly_created_at
    created_at.strftime("%B %e, %Y")
  end

  def calculate_tax
    return (price * 9)/100
  end

  def calculate_discount
    return (price * 5)/100
  end

end
