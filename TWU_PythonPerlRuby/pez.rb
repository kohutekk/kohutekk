#!/usr/bin/ruby

#pez.rb
#   REcreate the pez.pl progrom using either python or ruby. You must
#complete one of the two programs, but you can do both for extra credit.

print "     Welcome to pez.rb"
print "\n----------------------------\n"

arr = [0,0,0,0,0,0,0,0,0,0]
print "Here is the current array: "
print "\n#{arr} \n"

print "\nEnter in 10 pez colors:\n"
i = 0
while(i < 10)do
	print "#{i+1}. "
	arr[i] = gets.strip
	i += 1
end

print "\nHere is the array now:\n"
print arr

print "\n\nHere is the array popping\n"
while(i > 0)do 
	arr.pop
	print "#{arr}\n"
	i -= 1
end


