class Array
	def shuffel 
		some_arr = self
		rand_indx = 0
		temp = []
		return some_arr if some_arr.length <= 1

		#loop from 0 - length of the the array
		for i in 0..(some_arr.length - 1)
		    # Generate a random number between 0 and i 
			rand_indx = rand(0..i)
			
			# swap i with the location of that random number. 
			# swap_values(i,  rand_indx)
			temp = some_arr[i]
			some_arr[i] = some_arr[rand_indx]
			some_arr[rand_indx] = temp
		end
		some_arr
    end
end
some_arr = [1,2,3,4,5,6,7]
puts some_arr.shuffel.inspect

class Integer
	def factorial
		if self <= 1
			 1
		else
			self * (self-1).factorial
		end
	end
end
puts 4.factorial
puts 3.factorial
class String
	def old_roman_to_num
		roman_string = self
		roman_str = ['M', 'D', 'CD', 'C', 'XC','L', 'XL', 'X', 'IX', 'V', 'IV', 'I']
	  number_roman = [1000, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1] 
	  
		char_array = []
		indx_array = []
		result = 0
		number = 0
		swap_number = 0
		the_num =[]
	  
	  char_array = roman_string.split(//)
		# roman_string.each_char do |ch|
		# 	char_array.push(ch)	
		# end

		#puts "This is catch characters: #{char_array.inspect}"
		char_array.each do |indx|
			indx_array << roman_str.index(indx)
		end

		#puts "This is catch index: #{indx_array.inspect}"
		indx_array.each do |num|
			swap_number = number
			number = number_roman.fetch(num)
			the_num << number
			if result == 0 
				result += number
			elsif swap_number < number
				result -= swap_number
				result += (number - swap_number)
			else
				result = number + result		
			end
		end
  return  "The numerical value for roman numeral #{roman_string} is: #{result}" 
  end
end

some_str = "CCMX"
puts some_str.old_roman_to_num 

