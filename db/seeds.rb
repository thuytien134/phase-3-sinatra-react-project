puts "🌱 Seeding spices..."

# Seed your database here
c1 =Customer.create(name: 'Jame' )
c2 =Customer.create(name: 'Robert' )
c3 =Customer.create(name: 'Jhon' )
c4 =Customer.create(name: 'Mary' )
c5 =Customer.create(name: 'William' )
c6 =Customer.create(name: 'Susan' )

s1 = Specialist.create(name: 'Sarah',service: 'Pedicure')
s2 = Specialist.create(name: 'Ashley',service: 'Eyelash')
s3 = Specialist.create(name: 'Sandra',service: 'Manicure')
s4 = Specialist.create(name: 'Nancy',service: 'Pedicure')
s5 = Specialist.create(name: 'Emily',service: 'Wax')
s6 = Specialist.create(name: 'Karen',service: 'Facial')
s7 = Specialist.create(name: 'Lisa',service: 'Eyebrown')

a1 =Appointment.create(service: 'manicure',specialist_id: 3, customer_id:1, date_time: 'Tue, 22 Aug 2022 09:00:00' )
a2 =Appointment.create(service: 'manicure',specialist_id: 3, customer_id:1, date_time:  'Wed, 07 Sep 2022 10:00:00')
a3 =Appointment.create(service: 'eyelash',specialist_id: 2, customer_id:3, date_time: 'Tue, 13 Sep 2022 15:00:00'  )
a4 =Appointment.create(service: 'facial',specialist_id: 4, customer_id:1, date_time: 'Sat, 10 Sep 2022 13:00:00' )
a5 =Appointment.create(service: 'manicure',specialist_id: 2, customer_id:5, date_time: 'Fri, 19 Aug 2022 11:00:00' )
a6 =Appointment.create(service: 'manicure',specialist_id: 6, customer_id:4, date_time: 'Fri, 26 Aug 2022 15:00:00'  )



puts "✅ Done seeding!"
