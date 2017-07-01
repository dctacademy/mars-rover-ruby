require './rover'

puts "setup up initial data of rover"
print "Name : "
name = gets.chomp  
print "X : "
x_co = gets.to_i 
print "Y : "
y_co = gets.to_i 
print "Direction (N/E/W/S) : "
direction = gets.chomp.upcase

rover = Rover.new(name,x_co,y_co,direction)
puts rover.position
cont = 'y'
while cont == 'y'
	puts "Command (L/R/M) : "
	input = gets.chomp.upcase
	if ["L","R"].include? input 
		rover.direction(input)
		puts rover.position
	elsif input == "M"
		rover.move
		puts rover.position
	else
		puts "Invalid Command"
	end
end
