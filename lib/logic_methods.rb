# metodo recibe string (nombre o error o vacio)
#debe leer los archivos o cargar la pagina de error
#use include

# a = [ "a", "b", "c" ]
# a.include?("b")   #=> true
# a.include?("z")   #=> false

def read_string(string_name) 
    string_result = ""

    if string_name.include? ".txt"
        path_string = "../Data/#{string_name}"
    elsif string_name.include? "error.html"
        path_string = "../public/#{string_name}"
    elsif string_name.include? ".css"
        path_string = "../styles/#{string_name}"
    elsif
        path_string = "../#{string_name}"
    end

    path = Dir.glob(path_string).first
    File.open(path) do |f|
        f.each do |line|
        string_result << line
        end
    end
    string_result
end

