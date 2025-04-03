# FreeDoc
For this first exercise, we will help you and provide the models to create:

A Doctor model, which has the following attributes:

a first_name, which is a string
a last_name, which is a string
a specialty, which is a string
a zip_code, which is a string
A Patient model, which has the following attributes:

a first_name, which is a string
a last_name, which is a string
An Appointment model, which has the following attributes:

a date, which is a datetime
Once the attributes are set, we'll tackle the relationships:

An appointment can have only one doctor, but a doctor can have multiple appointments.
An appointment can have only one patient, but a patient can have multiple appointments.
A doctor can have multiple patients through appointments, and vice versa.
I invite you to create the models and migrations and then run them