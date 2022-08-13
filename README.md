# Welcome to my backend phase 3 Project
## Introduction:
In this project i built 3 tables of specialists, sppointments and customers. This is many to many relationship. A `Specialist`s can have many `Appointment`s, and `Customer` can have many `Appointment`s. Please vitsit [github link](https://github.com/thuytien134/phase3-my-app-frontend-project) to see my frontend app, using my API routes in sinatra, this app has CRUD action and interacts with my API .
## Backend structure:
1.  Create 3 tables `specialist`s, `appointments`, `customers` by migration. Visit the following link to see how to create table in Active record https://guides.rubyonrails.org/association_basics.html
2. Create 3 Models `Apppointment`, `Customer`, `Specialist`. Using macro-style to associate between each models. Notes that in `Appointment` model, i made `appointment_info` method so it will help for my `appointment` route later, in `Customer` model , i also made `react_appointments` method to help my `customers` route later.
3. I created data samples in seed file.
4. In `apppointment_controller` and `customer_controller` file, i made API routes that handles CRUD actions for `Appointment` and `Customer` Active record model.
5. In addition, i created a route `/services` to get all services for my Salon in `application_controller`.
6. To see data , please  run  `rake server` then visit `localhost:9292/` or check all routes on `Postman` app.
## Thank you for reading