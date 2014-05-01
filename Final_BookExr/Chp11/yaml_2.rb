require 'yaml'
# Define fancy methods
def yaml_save object, filename
	File.open filename, 'w' do |f|
		f.write(object.to_yaml)
	end
 end 

 def  yaml_load filename
 	yaml_string = File.read filename
 	YAML::load yaml_string
 end
 test_array = ['Slick Shoe', 
               'Bully Blinders',
                'Pinchers of Peril']

filename = 'DatasGadgets.txt'
# To save the file
yaml_save test_array, filename

# To load the file
read_array = yaml_load filename
# puts(read_array == test_array)
# true