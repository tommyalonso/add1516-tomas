#!/usr/bin/ruby
# encoding:utf-8
# Creado por: Tomás Rodríguez Alonso

usuarios = `cat userlist.txt`

usuarioslist = usuarios.split("\n")

usuarioslist.each { |usu| system("userdel -f #(usu)")}
