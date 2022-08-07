class Specialist < ActiveRecord::Base
    has_many :appointments
    has_many :customers, through: :appointments
    # def all_services
    #     Specialist.all.pluck(:service)
    # end
end