class AppointmentController < ApplicationController
    
    
    get "/appointments" do
     
        appointment =  Appointment.all.map{|a| a.appointment_info}
        appointment.to_json
      end
    
      post "/appointments" do
         if Customer.all.find_by(name: params[:customer_name])
            customer_id = Customer.all.find_by(name: params[:customer_name]).id
        else
          Customer.create(name: params[:customer_name])
          customer_id = Customer.all.find_by(name: params[:customer_name]).id
        end
       
         appointment = Appointment.create(
          service: params[:service],
          date_time: params[:time],
          specialist_id: Specialist.all.find_by(name: params[:specialist_name]).id,
          customer_id: customer_id
        )
        params.to_json
    
      end
    
      patch "/appointments/:id" do
        appointment = Appointment.find(params[:id])
        appointment.update( service: params[:service],
          date_time: params[:date_time],
          specialist_id: params[:specialist_id],
          customer_id: params[:customer_id]
        )
        appointment.to_json
    
      end
    
      delete "/appointments/:id" do
        appointment=Appointment.find(params[:id])
        appointment.destroy
        appointment.to_json
      end
    

end