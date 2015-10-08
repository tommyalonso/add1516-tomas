#!/usr/bin/ruby


asignaturas = ['add', 'srd', 'ade', 'sgy']

asignaturas.each do |nombre| 
	`rmdir curso1516/#{nombre}`
	puts "se ha borrado la carpeta "+nombre 
end
	`rmdir curso1516`

puts "El script ha finalizado"
