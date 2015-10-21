#!/usr/bin/ruby
# encoding: utf-8

#Localizar nombre del fichero
#Comando $ls userlist*
filename = `userlist.data`

#Cargar los usuarios desde el fichero.

users = `cat #{filename}`
userlist = users.split("\n")

#Borrar los usuarios.
userlist.each do |usu|
	puts "userdel -f -r #{usu}"
end

