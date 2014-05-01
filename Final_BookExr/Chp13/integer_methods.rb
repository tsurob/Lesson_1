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
	# def factorial
	# 	if self <= 1
	# 		 1
	# 	else
	# 		self * (self-1).factorial
	# 	end
	# end
# end
# puts 4.factorial
# puts 3.factorial
