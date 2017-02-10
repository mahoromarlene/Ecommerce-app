class Order < ApplicationRecord
  belongs_to :user, optional:true
  has_many :products, through: :carted_products
  has_many :carted_products

end
