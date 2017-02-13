class ProductsController < ApplicationController

  before_action :authenticate_user!, except: [:index, :show, :search]

  def index
    if params[:sort]
      @products = Product.all.order(price: params[:sort])
    elsif params[:filter] == "discount"
      @products = Product.where("price <= ?", 350)
    elsif params[:category]
      @products = Category.find_by(name: params[:category]).products
    else
      @products = Product.all
    end
  end

  def show
    if params[:id] == "random"
      @product = Product.all.sample
    else 
      @product = Product.find_by(id: params[:id])
    end
  end
  
  def new
    @product = Product.new
    @suppliers = Supplier.all
  end


  def create
    name = params[:name]
    price = params[:price]
    description = params[:description]
    @product = Product.new({name: name, price: price, description: description})
    if product.save
      flash[:success] = "Your product is created"
      redirect_to "/products/#{@product.id}"
    else
      @suppliers = Supplier.all?
      flash[:warning] = "Product not created"
      render :new
    end
  end

  def edit
    @product = Product.find_by(id: params[:id])
    @suppliers = Supplier.all
  end

  def update
    product = Product.find_by(id: params[:id])
    product.name = params[:name]
    product.price = params[:price]
    product.description = params[:description]
    product.save
    flash[:success] = "Your product is updated"
    redirect_to "/products/#{product.id}"
  end

  def destroy
    @product = Product.find_by(id: params[:id])
    @product.destroy
    flash[:success] = "Your product is destroyed"
    redirect_to "/products"
  end
end
