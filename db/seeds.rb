# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])


prof1 = Prof.create([{ nome: 'Professor Teste', email: 'eonay.web@gmail.com', senha: 'admin', login: 'admin' }])
prof2 = Prof.create([{ nome: 'Professor Teste 2', email: 'eonay.gurjao@gmail.com', senha: 'prof', login: 'prof' }])