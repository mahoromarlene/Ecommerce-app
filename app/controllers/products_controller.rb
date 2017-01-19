class ProductsController < ApplicationController

  def all_products
    @all_the_products = Product.all
    render "all_products.html.erb"
  end
end
