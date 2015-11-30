#!/usr/bin/ruby
# encoding: utf-8
# Tomás Rodríguez Alonso

#Control

user=`whoami`

if user != "root\n"
		puts "Lo sentimos, usted no tiene permisos"
		puts "@@@------------------------------@@@"
		exit
end

#Empieza Script

result = `cat software-list.txt`
filas = result.split("\n")

filas.each do |name|
	campo = name.split(":")
	paquete = campo[0]
	accion = campo[1]
	instalado = system("dpkg -l #{paquete}|grep ii")
	
if (accion == "remove" or accion == "r") and instalado == true
	system("apt-get remove --purge -y #{paquete}")
	puts "El siguiente paquete ha sido desinstalado: #{paquete}"
	
elsif (accion == "install" or accion =="i") and instalado == false
	system("apt-get install -y #{paquete}")
	puts "Enhorabuena, usted ha instalado el siguiente paquete: #{paquete}"
	end
	
end


