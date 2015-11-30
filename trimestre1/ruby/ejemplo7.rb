#!/usr/bin/ruby

resultado = `cat carpeta.txt`

asignaturas = resultado.split("\n")

puts asignaturas

size=asignaturas.size - 1

system("mkdir #{asignatruras[0]}")

asignaturas[1,size].each do |nombre|
	system("mkdir #{asignatruras[0]}/#{nombre}")
end

puts "Creadas las carpetas"
