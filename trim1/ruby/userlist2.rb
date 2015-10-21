#!/usr/bin/ruby
# encoding: utf-8

fichero = `cat.userlist2.txt`
filas = fichero.split("\n")
puts filas

filas.each do |fila|
	puts "Muestra" +fila
	campos = fila.split(":")
	puts "-------------"
	puts "nombre	:" +campos[0].capitalize
	puts "apellido1	:" +campos[1].capitalize
	puts "apellido2	:" +campos[2].capitalize
	puts "sexo		:" +campos[3].capitalize
	
end
