class CustomerController < ApplicationController
    get "/customers/:name/appointments" do
    appointments = Customer.find_by(name: params[:name]).react_appointments
    appointments.to_json
    end
end