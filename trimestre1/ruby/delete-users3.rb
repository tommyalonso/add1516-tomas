#!/usr/bin/ruby
# encoding: utf-8

#Localizar nombre del fichero
#Comando $ls userlist*
filename = `userlist.data`

#Cargar los usuarios desde el fichero.

users = `cat userlist.data`
userlist = users.split("\n")

if userlist.count==0 
	puts "Como userlist está vacío lo intento txt"
	users = `cat userluist.txt`
	userlist = user.split("\n")
end

#Crear los usuarios.
userlist.each do |usu|
	puts "userdel -f -r #{usu}"
end

