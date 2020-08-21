#Input del usuario.
input_usuario = ARGV[0].downcase

#Arreglo de opciones para la computadora.
opciones = ["piedra", "papel", "tijera"]

#Esta es la elección que hace la computadora a partir del arreglo de opciones disponible.
eleccion = opciones[rand(3)]

#Flujo de control del juego.
case(input_usuario)
when eleccion
    puts "Computador juega #{eleccion}.\nEmpataste"
when "tijera"
    puts "Computador juega #{eleccion}.\nGanaste" if eleccion == "papel"
    puts "Computador juega #{eleccion}.\nPerdiste" if eleccion == "piedra"
when "piedra"
    puts "Computador juega #{eleccion}.\nGanaste" if eleccion == "tijera"
    puts "Computador juega #{eleccion}.\nPerdiste" if eleccion == "papel"
when "papel"
    puts "Computador juega #{eleccion}.\nGanaste" if eleccion == "piedra"
    puts "Computador juega #{eleccion}.\nPerdiste" if eleccion == "tijera"
else
    puts "Argumento inválido: debe ser piedra, papel o tijera"
end