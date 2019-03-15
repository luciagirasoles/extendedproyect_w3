# Esta linea está llamando a la clase Socket que tiene Ruby
require 'socket'

html = "
<!DOCTYPE html>
<html lang=\"en\">

<head>
    <meta charset=\"UTF-8\">
    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">
    <meta http-equiv=\"X-UA-Compatible\" content=\"ie=edge\">
    <!-- <link rel=\"stylesheet\" href=\"./assets/style.css\">-->
    <title>Grupo Werewolves</title>
</head>

<body>
    <!-- <header></header> -->
    <main>
        <section class=\"principal\">
            <h1>Grupo Werewolves</h1>
        </section>
        <section class=\"descripcion\">
            <h2>Integrantes:</h2>
            <ul class=\"listaDetalle\">
                <li class=\"detalle\">Product Owner: <a href=\"#\">Carlos Ayala</a></li>
                <li class=\"detalle\">Representante Técnico: <a href=\"#\">Mayra Navarro</a></li>
                <li class=\"detalle\"><a href=\"#\">Brayan Ciudad</a></li>
                <li class=\"detalle\"><a href=\"#\">Jonathan Mendoza</a></li>
                <li class=\"detalle\"><a href=\"#\">Christopher Roa</a></li>
            </ul>
        </section>
    </main>
    <footer>
        <p>&copy;2019 Grupo Werewolf</p>
    </footer>
</body>

</html>

"

# Aquí está iniciando una conexión en el puerto 8000
server = TCPServer.new 8000

loop do
 # Espera a que un cliente se conecte
 client = server.accept
 # Muestra mensajes al cliente
 client.print "HTTP/1.1 9\n" # 1
 client.print "Content-Type: text/html\n" # 2
 client.print "\n" # 3
 client.print html
 # Cierra la conexión
 client.close
end