class CreateAppointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|
      t.string :service
      t.string :date_time
      t.integer :specialist_id
      t.integer :customer_id
    end
  end
end
