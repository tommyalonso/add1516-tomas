#! /usr/bin/ruby
# encoding: utf-8

user=`whoami`
if user != "root\n"
	puts "El usuario no es root"
	exit
end

	file=`cat userslist.txt`
	filas=file.split("\n")
	filas.each do |linea|
	datos=linea.split(":")
	
if datos[2] == ""
	puts "El usuario #{datos[0]} no tiene email"
else

	if datos[-1] == "add"
	system("useradd -m -s /bin/bash #{datos[0]}")
	puts "Se ha creado el usuario #{datos[0]}"
	
	else if datos[-1] == "delete"
	system("userdel -r #{datos[0]}")
	puts "Se ha borrado el usuario #{datos[0]}"
		end
	end
end
end
