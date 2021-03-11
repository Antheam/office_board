# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

tenantOne = Tenant.create(name: "lu", email: "lu@gmail.com")
tenantTwo = Tenant.create(name: "mike", email: "mike@gmail.com")
tenantThree = Tenant.create(name: "jude", email: "jude@gmail.com")

studioOne = Studio.create(name: "studioOne", monthly_price: 300)
studioTwo = Studio.create(name: "studioTwo", monthly_price: 700)
studioThree = Studio.create(name: "studioThree", monthly_price: 800)

stayOne = Stay.create(tenant_id: tenantOne.id, studio_id: studioThree.id, length_of_stay: 4)
stayOne = Stay.create(tenant_id: tenantOne.id, studio_id: studioOne.id, length_of_stay: 12)
stayOne = Stay.create(tenant_id: tenantThree.id, studio_id: studioTwo.id, length_of_stay: 22)
stayOne = Stay.create(tenant_id: tenantTwo.id, studio_id: studioTwo.id, length_of_stay: 6)
stayOne = Stay.create(tenant_id: tenantOne.id, studio_id: studioThree.id, length_of_stay: 9)


