class ImagesController < ApplicationController

  def index
    @images = Image.all
  end

  def show
    @image = Image.find_by(id: params[:id])
  end

  def new
  end

  def create
    image = Image.new(url: params[:url], product_id: params[:product_id])
    image.save
    redirect_to "/images/#{image.id}"
  end

  def edit
     @image = Image.find_by(id: params[:id])
  end

  def update
    image = Image.find_by(id: params[:id])
    image.url = params[:url]
    image.product_id = params[:url]
    image.save
    redirect_to "/images/#{image.id}"
  end

  def destroy
    image = Image.find_by(id: params[:id])
    image.destroy
    redirect_to "/images"
  end
end
