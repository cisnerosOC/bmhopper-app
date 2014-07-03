class ServiceCall < ActiveRecord::Base
  has_many :service_call_details
  belongs_to :user
  attr_accessor :vaccum_service

  
end
