@x_arr =  ['1', '2', '3']
@y_arr = ['4',  '5', '6']

def check_which_arrs some_arr
	if some_arr == @x_arr
		puts 'I got x_arr'
	elsif some_arr == @y_arr
		puts 'I got y_arr'
	else
 		puts 'No x or y array knocked on my door'
 	end
 	puts @x_arr.inspect
 	puts @y_arr.inspect
end
check_which_arrs @x_arr
check_which_arrs @y_arr