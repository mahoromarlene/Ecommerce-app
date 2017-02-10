class CartedproductsController < ApplicationController
  def index
    # @cartedproducts = current_user.orders.find_by(completed: false).carted_products
    @order = current_user.orders.find_by(completed: false)

    unless @order
      flash[:warning] = "No products in your shopping cart"
      redirect_to "/products"
    end
  end

  def create
    order = current_user.orders.find_by(completed: false) || Order.create(user_id: current_user.id, completed: false)
      
    product_id = params[:product_id]
    quantity = params[:quantity]
    cartedProduct = CartedProduct.new(order_id: order.id, product_id: product_id, quantity: quantity)
    cartedProduct.save
    redirect_to "/cartedproducts"
  end

  def destroy
    cartedProduct = CartedProduct.find_by(id: params[:id])
    cartedProduct.destroy
    flash[:warning] = "Product successfully removed from your shopping cart"
    redirect_to "/cartedproducts"
  end

end
