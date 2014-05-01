puts 'What year were you born?'
print '> '
birth_year = gets.chomp.to_i
puts 'What month were you born? Enter integer between 1-12: '
print '> '
birth_month = gets.chomp.to_i
puts 'What day were you born? Enter integer between 1-31: '
print '> '
birth_day = gets.chomp.to_i
current_date = Time.new
puts current_date.month
age_year = current_date.year - birth_year

if current_date.month <  birth_month
	age_year -= 1
elsif current_date.day < birth_day
		age_year -= 1
end
for i in 1..age_year 
	if i < 10
	  puts "0#{i}: SPANK!"
	else
	  puts "#{i}: SPANK!"
	end
end 
 
