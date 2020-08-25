#Input del usuario.
input_usuario = ARGV[0].downcase

#Arreglo de opciones para la computadora.
opciones = ["piedra", "papel", "tijera"]

#Esta es la elección que hace la computadora a partir del arreglo de opciones disponible.
eleccion = opciones[rand(3)]

#Método de "Computador Juega"
def comp_juega(e)
    return "Computador juega #{e}"
end

#Flujo de control del juego.
case(input_usuario)
when eleccion
    puts comp_juega(eleccion)+".\nEmpataste"
when "tijera"
    puts comp_juega(eleccion)+".\nGanaste" if eleccion == "papel"
    puts comp_juega(eleccion)+".\nPerdiste" if eleccion == "piedra"
when "piedra"
    puts comp_juega(eleccion)+".\nGanaste" if eleccion == "tijera"
    puts comp_juega(eleccion)+".\nPerdiste" if eleccion == "papel"
when "papel"
    puts comp_juega(eleccion)+".\nGanaste" if eleccion == "piedra"
    puts comp_juega(eleccion)+".\nPerdiste" if eleccion == "tijera"
else
    puts "Argumento inválido: debe ser piedra, papel o tijera"
end

