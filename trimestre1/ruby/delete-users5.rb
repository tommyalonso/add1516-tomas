#!/usr/bin/ruby
# encoding: utf-8

#Localizar nombre de fichero
#Comando $ls userlist*
filename = `ls userlist*`
puts filename

#Cargar los usuarios desde el fichero.
puts "///------------------------"
users = `cat #{filename}`
userlist = users.split("\n")

#Borrar los usuarios.
userlist.each do |usu|
	puts "userdel -f -r #{usu}"
end

