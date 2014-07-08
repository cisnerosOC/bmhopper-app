class CustomersController < ApplicationController
def index
    @customers = Customer.all
  end
  
  def show
    @customers = Customer.find_by(:id => params[:id])
  end
  def new
    @customers = Customer.new
  end

  def create
    @customers = Customer.create(params[:customer])
    flash[:success] = 'Customer Successfully created.'
    redirect_to "/customers/#{@customers.id}"
  end
  def edit
    @customers = Customer.find_by(:id => params[:id])
  end
  def update
    @customers = Customer.find_by(:id => params[:id])
    @customers.update(params[:customer])
    flash[:success] = 'Customer Info has Successfully updated.'
    redirect_to "/customer/#{@customer.id}"
  end
  def destroy
    @customers = Customer.find_by(:id => params[:id])
    @customers.destroy
    flash[:success] = "Customer has been Successfully Added!"
    redirect_to "/"
    
  end

end


