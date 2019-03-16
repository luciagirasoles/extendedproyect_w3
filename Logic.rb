# Esta linea está llamando a la clase Socket que tiene Ruby
require 'socket'

# html = "
# <!DOCTYPE html>
# <html lang=\"en\">

# <head>
#     <meta charset=\"UTF-8\">
#     <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">
#     <meta http-equiv=\"X-UA-Compatible\" content=\"ie=edge\">
#     <link rel=\"stylesheet\" href=\"../first_css.css\">
#     <title>Grupo Werewolves</title>
# </head>

# <body>
#     <!-- <header></header> -->
#     <main>
#         <section class=\"principal\">
#             <h1>Grupo Werewolves</h1>
#         </section>
#         <section class=\"descripcion\">
#             <h2>Integrantes:</h2>
#             <ul class=\"listaDetalle\">
#                 <li class=\"detalle\">Product Owner: <a href=\"#\">Carlos Ayala</a></li>
#                 <li class=\"detalle\">Representante Técnico: <a href=\"#\">Mayra Navarro</a></li>
#                 <li class=\"detalle\"><a href=\"#\">Brayan Ciudad</a></li>
#                 <li class=\"detalle\"><a href=\"#\">Jonathan Mendoza</a></li>
#                 <li class=\"detalle\"><a href=\"#\">Christopher Roa</a></li>
#             </ul>
#         </section>
#     </main>
#     <footer>
#         <p>&copy;2019 Grupo Werewolf</p>
#     </footer>
# </body>

# </html>

# "

# css = "
# body {
#   margin: 0;
#   padding: 0;
#   background-color: #000;
# }

# main {
#   display: flex;
#   justify-content: center;
#   flex-flow: column;
#   width: 80%;
#   margin: 0 auto;
#   background-color: chocolate;
# }

# section {
# }

# .principal {
#   display: flex;
#   align-items: center;
#   justify-content: center;
#   height: 50vh;
#   background-color: palegoldenrod;
# }

# .principal h1 {
#   padding: 0;
#   margin: 0;
#   font-weight: bold;
#   font-size: 4em;
#   text-align: center;
#   vertical-align: center;
# }

# .descripcion {
#   height: 45vh;
# }

# footer {
#   height: 5vh;
#   background-color: brown;
#   text-align: center;
#   line-height: 2em;
# }

# footer p {
#   padding: 0;
#   margin: 0;
# }

# "

# Aquí está iniciando una conexión en el puerto 8000
server = TCPServer.new 8000

loop do
  # Espera a que un cliente se conecte
  client = server.accept
  # Recuperando toda la información enviada en la petición (request)
  request = client.gets.gsub(/ HTTP\/1.[12]\r\n|GET \//,"")
  result = ""
  code_http = "404"
  content_type = "text/html"
  if request.include?(".css")
    #validar
    code_http = "200"
    content_type = "text/css"
  else
    if request == ""
    elsif request.include?("?member=")

      code_http = "200"
    end
  end

  client.print "HTTP/1.1 #{code_http}\n"
  client.print "Content-Type: #{content_type}\n" # 2
  client.print "\n" # 3
  client.print result
  client.close
end