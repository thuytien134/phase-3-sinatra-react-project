class Customer < ActiveRecord::Base
    has_many :appointments
    has_many :specialists, through: :appointments

    def react_appointments
        self.appointments.map do |appointment|
            app_obj = {
                id: appointment.id,
                service: appointment.service,
                date_time: appointment.date_time,
                specialist_name: Specialist.all.find(appointment.specialist_id).name,
                customer_name: self.name
            }
        end
    end

end