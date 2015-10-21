#!/usr/bin/ruby

resultado = `cat userlist.txt`

asignaturas = resultado.split("\n")

puts asignaturas

size=asignaturas.size - 1

system("rmdir #{asignatruras[0]}")

asignaturas[1,size].each do |nombre|
	system("rmdir #{asignatruras[0]}/#{nombre}")
end

puts "Creadas las carpetas"
