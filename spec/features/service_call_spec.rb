require "rails_helper"

describe "service_calls", :type => :feature do 

  it "Will create a new service_calls" do

    visit new_service_call_path
    check("Service2")
    check("Service3")
    check("Service4")
    check("Service5")
    check("Service6")
    click_on("Create Service call")
    
    service_call = ServiceCall.last
    
  end
end