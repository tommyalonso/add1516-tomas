#!/usr/bin/ruby
# encoding: utf-8
require 'rainbow'

#  eliminar_procesos.rb
#  Tomás Rodríguez Alonso
#  2º ASIR Adm. de Sistemas Operativos


user=`whoami`
if user != "root\n"
	puts Rainbow("Lo sentimos, usted no tiene permisos").color(:orange)
	puts Rainbow("@@@------------------------------@@@").color(:orange)
	exit
end
puts Rainbow("Bienvenido root").color(:green)

result=`cat processes-black-list.txt`
filas=result.split("\n")


def controlar_procesos(proceso, accion)
	comprobar = system("ps -e| grep #{proceso} 1>/dev/null")
		
		if (accion == "notify" or accion == "n") and comprobar == true
		puts Rainbow("ATENCIÓN: #{proceso} en ejecución").color(:orange)	
	end 
	
	if (accion == "kill" or accion == "k") and comprobar == true
		system("killall #{proceso}")
		puts Rainbow("Se han detenido los procesos siguientes: #{proceso}").color(:lightskyblue)

	end 
end

system("touch state.running")

while(File.exist?('state.running')) do
	filas.each do |lineas|
		campo = lineas.split(":")
		proceso = campo[0]
		accion = campo[1]
		controlar_procesos(proceso,accion)
	end
	sleep(5) #esperar 5 segundos antes de volver a repetir el bucle
end	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
