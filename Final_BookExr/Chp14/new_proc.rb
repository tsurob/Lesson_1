require 'pry'
def do_until_false first_input, some_proc
	input  = first_input
	output = first_input
	while output 
		input = output
		output = some_proc.call input
	end
	input
end
# building.pry
# build_array _of_spuares = Proc.new do |array|
#   last_number = array.last
#   if last_number <= 0
#     false 
#   else
#   	# Take off the last number....
#   	array.pop
#   	#.... and replace it with it's square...
#   	array.push last_number*last_number
#   	#...followed by the next smaller number.
#   	array.push last_number-1
#   end
# end
puts "ptogram resumes here."
always_false = Proc.new do |just_ignor_me|
	false
end
# puts do_until_false([5], build_array_of_squares).inspect
yum = 'lemonade with a hint of orange blossom water'
puts do_until_false(yum, always_false)
