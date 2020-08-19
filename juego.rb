#Input del usuario.
input_usuario = ARGV[0].to_s

#Arreglo de opciones para la computadora.
opciones = ["piedra", "papel", "tijera"]

#Esta es la elección que hace la computadora a partir del arreglo de opciones disponible.
eleccion = opciones[rand(3)]

#Flujo de control del juego.
if input_usuario == eleccion
    puts "Computador juega #{eleccion}"
    puts "Empataste"
elsif input_usuario == "piedra" && eleccion == "tijera"
    puts "Computador juega #{eleccion}"
    puts "Ganaste"
elsif input_usuario == "piedra" && eleccion == "papel"
    puts "Computador juega #{eleccion}"
    puts "Perdiste"
elsif input_usuario == "papel" && eleccion == "piedra"
    puts "Computador juega #{eleccion}"
    puts "Ganaste"
elsif input_usuario == "papel" && eleccion == "tijera"
    puts "Computador juega #{eleccion}"
    puts "Perdiste"
elsif input_usuario == "tijera" && eleccion == "papel"
    puts "Computador juega #{eleccion}"
    puts "Ganaste"
elsif input_usuario == "tijera" && eleccion == "piedra"
    puts "Computador juega #{eleccion}"
    puts "Perdiste"
else
    puts "Argumento inválido: debe ser piedra, papel o tijera"
end