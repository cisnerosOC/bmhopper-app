class ServiceCallsController < ApplicationController
   def new
    @service_call = ServiceCall.new
  end

  def create
    @product = Product.create(params[:product])
    flash[:success] = 'Product Successfully created.'
    redirect_to "/products/#{@product.id}"
  end
end
