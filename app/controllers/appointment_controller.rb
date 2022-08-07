class AppointmentController < ApplicationController
    
    # get "/appointments/services" do
    #     # binding.pry
    #     service = Appointment.all
    #     service.to_json
    # end
    
    get "/appointments" do
        # binding.pry
        appointment = Appointment.all
        appointment.to_json
      end
    
      post "/appointments" do
        appointment = Appointment.create(
          service: params[:service],
          date_time: params[:date_time],
          specialist_id: params[:specialist_id],
          customer_id: params[:customer_id]
        )
        appointment.to_json
    
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