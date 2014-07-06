class ServiceCallsController < ApplicationController
   def new
    @service_call = ServiceCall.new
  end

  def create
    @service_call = ServiceCall.create(params[:service_call])
    params[:service_call].each do |key,value|

      @service_call.service_call_details.create({:name=>key,:value=>value})
    end
    flash[:success] = 'Service  Successfully created.'
    redirect_to "/service_calls/new"
  end
end


  # Parameters: {"utf8"=>"✓", "authenticity_token"=>"eimwPZTtLP2HeEWtZamr5S7KAB0/fAw87cS+8mdPELw=", "service_call"=>{"service1"=>"true", "service2"=>"true", "service3"=>"false", "service4"=>"false", "service5"=>"false", "service6"=>"false"}, "commit"=>"Create Service call"}