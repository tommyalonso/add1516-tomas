#!/usr/bin/ruby
# encoding: utf-8
system ("clear")

#Localizar los nombres de los ficheros
comando = `ls userlist* 2> /dev/null"`
filename = `ls userlist*`
puts filename.to_s

if filenames.empty? then
	puts "No hay archivos userlist* para cargar"
	exit
end

def procesar_usuarios_de(pfilename)

#Cargar los usuarios desde el fichero.
	puts "///------------------------"
	puts "voy a elminnar los usuarios de #{filenames[0]}"
	users = `cat #{filenames[0]}`
	userlist = users.split("\n")

#Borrar los usuarios.
	userlist.each do |usu|
		puts "userdel -f -r #{usu}"
	end
end

filenames.each do|f|
	procesar_usuarios_de f
end
