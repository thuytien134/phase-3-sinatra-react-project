class AppointmentController < ApplicationController
    
    
    get "/specialist_has_most_appointments" do
        specialist_id_arr =  Appointment.all.pluck(:specialist_id)
        specialist_id_most_appointment = specialist_id_arr.max_by {|i| specialist_id_arr.count(i)}
        Specialist.all.find(specialist_id_most_appointment).name.to_json
     
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
          date_time: params[:date_time],
          specialist_id: Specialist.all.find_by(name: params[:specialist_name]).id,
          customer_id: customer_id
        )
        params.to_json
    
    end

    
    patch "/appointments/:id" do
      appointment = Appointment.find(params[:id])
      appointment.update( 
        service: params[:service],
        date_time: params[:date_time]
        )
      appointment.to_json
    
    end
    
      delete "/appointments/:id" do
        appointment=Appointment.find(params[:id])
        appointment.destroy
        appointment.to_json
    end
    

end