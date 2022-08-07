class Appointment < ActiveRecord::Base
    belongs_to :specialist
    belongs_to :customer

    def appointment_info
        appointment= {
            time: self.date_time,
            service: self.service,
            specialist_name:  self.specialist.name,
            customer_name: self.customer.name
        }
         appointment
    end
end
