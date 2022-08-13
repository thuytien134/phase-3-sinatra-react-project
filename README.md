# Welcome to my Backend Phase 3 Project
## Introduction:
In this project I built three tables: Specialists, Appointments, and Customers. Their relationhip is is many to many: a `Specialist` can have many `Appointment`s, and `a Customer` can have many `Appointment`s. Please vitsit [github link](https://github.com/thuytien134/phase3-my-app-frontend-project) to see my frontend app. It uses my API routes in Sinatra. Furthermore, this app has a CRUD action and interacts with my API .
## Backend structure:
1.  Created 3 tables `specialists`, `appointments`, and `customers` by migration. Visit the following link to see how to create table in Active record https://guides.rubyonrails.org/association_basics.html.
2. Created 3 models `Appointment`, `Customer`, and `Specialist`, using macro-style to associate between each models. Note that in the `Appointment` model I created an `appointment_info` method so it will help for my `/specialist_has_most_appointments` route later. Furthermore, in the `Customer` model I also made a `react_appointments` method to help my `/customers/:name/appointments` route later.
3. Created data samples in a seed file.
4. In the `apppointment_controller` and `customer_controller` files, I made API routes that handle CRUD actions for the `Appointment` and `Customer` Active Record models.
5. Also created a route `/services` to get all the services for my Salon in the `application_controller`.
6. To see the data, please run `rake server`, then visit `localhost:9292/` or check all the routes on the `Postman` app.
