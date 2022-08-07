class Customer < ActiveRecord::Base
    has_many :appointments
    has_many :specialists, through: :appointments

end