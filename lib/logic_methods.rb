#require "require_all"
#require_all "../Data"



#
# load all ruby files in the directory "lib" and its subdirectories
#   require_all 'lib'
# or load all files by using glob
#   require_all 'lib/**/*.rb'
# or load files in an Array
#   require_all Dir.glob("blah/**/*.rb").reject { |f| stupid_file? f }
# or load manually specified files
#   require_all 'lib/a.rb', 'lib/b.rb', 'lib/c.rb', 'lib/d.rb'


#validar si del nombre ingresado existe el .txt
def check_file_existence(name)
    @name = '../Data/' + name.to_s + '.txt'
    File.exist?(@name) || File.symlink?(@name) 
end
puts check_file_existence("Mayra")


