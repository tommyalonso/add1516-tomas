#!/usr/bin/ruby
# encoding: utf-8

uers = `cat userslist.txt`

list=users.split("\n")

list.each do |nombreusuario|
`sudo userdel #(nombreusuario)
puts
