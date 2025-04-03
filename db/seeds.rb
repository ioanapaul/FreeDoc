require 'faker'

# Suppression des anciennes données
City.destroy_all
Doctor.destroy_all
Patient.destroy_all
Appointment.destroy_all
Specialty.destroy_all

# Création des villes
paris = City.create(name: "Paris")
lyon = City.create(name: "Lyon")

# Création des spécialités
cardio = Specialty.create(name: "Cardiologue")
dentist = Specialty.create(name: "Dentiste")

# Création des docteurs
doctor1 = Doctor.create(first_name: "Jean", last_name: "Dupont", city: paris)
doctor2 = Doctor.create(first_name: "Marie", last_name: "Curie", city: lyon)

# Assigner les spécialités aux docteurs
doctor1.specialties << cardio
doctor2.specialties << dentist

# Création des patients
patient1 = Patient.create(first_name: "Alice", last_name: "Martin", city: paris)
patient2 = Patient.create(first_name: "Louis", last_name: "Dupuis", city: lyon)

# Création des rendez-vous
Appointment.create(date: DateTime.now, doctor: doctor1, patient: patient1, city: paris)
Appointment.create(date: DateTime.now + 1.day, doctor: doctor2, patient: patient2, city: lyon)

puts "Seed terminé avec succès !"
