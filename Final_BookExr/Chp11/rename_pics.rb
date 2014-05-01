# A program to batch rename photos
# Dir.chdir '../Pictures/NewPic/'
# First we find all of the pictures to be moved.
# file_location = File.join(File.dirname(__FILE__), '../../')
Dir.chdir(open("#{Dir.home}/Pictures/NewPic"))
# File.open('test1.txt', 'w') do |f|
# 	f.write "I got here"
# end
pic_names = Dir['*.{jpg,JPG}']
puts 'What would you like to call this batch?'
batch_name = gets.chomp
puts

# This will be our counter
print "Downlading #{pic_names.length} files:"
pic_number = 1
pic_names.each do |name|
	if File.exist?("#{batch_name}0#{pic_number}.jpg" ||
		"#{batch_name}#{pic_number}.jpg")== false
			
			print '.' # This is our "progress bar"
			new_name = if pic_number < 10
				"#{batch_name}0#{pic_number}.jpg"
			else
				"#{batch_name}#{pic_number}.jpg"
			end
			# This renames the picture, but since "name"
			# has a big long path on it, and "new_name"
			# doesn't, it also moves the file to the 
			# current working directory
			File.rename name, new_name
			# we increment the counter.
			pic_number = pic_number + 1
    else
    	puts "'#{batch_name}' already exist"
		exit
	end  
end
puts # This is so we aren't on progress bar line.
puts 'Done, batch rename complete!'
