# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts "Seeds Serie"
Serie.delete_all
Serie.create( nombre: "Bates Motel",
  descripcion: "Bates Motel retrata la vida de un joven de aspecto frágil llamado Norman Bates y de su posesiva madre Norma, unos años antes de los acontecimientos narrados en Psicosis.",
  en_transmision: true)
