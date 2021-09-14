sylwia = Landlord.create!(name: "Sylwia")
eric = Landlord.create!(name: "Eric")
michelle = Landlord.create!(name: "Michelle")
ian = Landlord.create!(name: "Ian")

gabe = Tenant.create!(name: "Gabe", rent: 100, term: 12)
max = Tenant.create!(name: "Max", rent: 9000, term: 999)
jahaira = Tenant.create!(name: "Jahaira", rent: 12000)
matt = Tenant.create!(name: "Matt", rent: 0, term: 999)
aaron = Tenant.create!(name: "Aaron", rent: 500, term: 36)

sylwia.tenants << gabe
sylwia.tenants << max
eric.tenants << jahaira

matt.landlords << michelle
matt.landlords << eric
aaron.landlords << ian

chase = Custodian.create!(name: "Chase", tenant_id: gabe.id, specialty: "electrical")
raza = Custodian.create!(name: "Raza", tenant_id: jahaira.id, specialty: "plumbing")
annie = Custodian.create!(name: "Annie", tenant_id: max.id, specialty: "electrical")
michelle = Custodian.create!(name: "Michelle", tenant_id: matt.id, specialty: "general")
justin = Custodian.create!(name: "Justin", specialty: "general")

puts "Successfully seeded"