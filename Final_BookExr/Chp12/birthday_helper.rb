birthday_date = {}

# print ">"

File.open('birthday.txt', 'r').each_line do |line|
	line = line.chomp
	first_comma = 0
	while line[first_comma] != ',' && first_comma < line.length
		first_comma += 1
	end
	name = line[0..first_comma-1]
	date = line[-12..-1]
	birthday_date[name] = date
end
puts "Enter th name of the person's birthday you wish to know"
print "> "
name = gets.chomp
date  = birthday_date[name]
puts date[0..5]
