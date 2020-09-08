# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Services 

hha = Service.create(title: "Home Health Aides", content:"Home Health aides provide everything from companionship to basic health assistance", skills: 'HHA Certificate')
cdpap = Service.create(title: "CDPAP", content: "is a Medicaid program that allows friends and family to become personal caregivers", skills: "CDPAP Certificate")
