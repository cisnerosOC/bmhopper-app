class ProductsController < ApplicationController
  def index
    @products = Product.all
  end
  
  def show
    @product = Product.find_by(:id => params[:id])
  end
  def new
    @product = Product.new
  end

  def create
    @product = Product.create(params[:product])
    flash[:success] = 'Product Successfully created.'
    redirect_to "/products/#{@product.id}"
  end
  def edit
    @product = Product.find_by(:id => params[:id])
  end
  def update
    @product = Product.find_by(:id => params[:id])
    @product.updated(params[:product])
    flash[:success] = 'Product Successfully updated.'
    redirect_to "/products/#{@product.id}"
end
