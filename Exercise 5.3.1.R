#item 1

# Cargar la librería dplyr
library(dplyr)

library(nycflights13)

# Ordenar los valores faltantes al principio del marco de datos starwars
starwars_ordenado <- arrange(starwars,desc(is.na(mass)))

# Ver el marco de datos ordenado
head(starwars_ordenado)
view(starwars_ordenado)

#item2

#Se almacena en flight_most_delayed la clasificacion de vuelos con mayor retraso de manera descendente (Mayor a menor)
flight_most_delayed <- arrange(flights,desc(dep_delay))
#Se almacena en flight_most_delayed la clasificacion de vuelos con menor retraso de manera ascendente (Menor a mayor)
flight_leftearliest <- arrange(flights,dep_delay)
#Se desea observar los primeros datos de la lista y desplegar en una pestaña la vista de la tabla
head(flight_most_delayed)
head(flight_leftearliest)

#item3


#Se asigna los datos de arrange de velocidad a flights, calculando la velocidad=distancia/tiempo
flights <- mutate(flights,speed = distance /air_time*60)
#Se selecciona la categoria speed
select(flights,speed)
#Se asigna el orden de mayor a menor de velocidad a flights
flights <- arrange(flights,desc(speed))
#Se despliegan los primeros valores de flights
head(flights)
View(flights)


#item4

#Se asigna los datos de arrange de distancia a flights farthest
flights_farthest <- arrange(flights,desc(distance))
#Se asigna los datos de arrange de menor distancia a shortest
flights_shortest <- arrange(flights,distance)
#Se asigna los head(primero datos) en la salida
head(flights_farthest)
#Se asigna los head(primero datos) en la salida
head(flights_shortest)
#Se asigna los head(primero datos) en la salida
View(flights_farthest)
#Se asigna los head(primero datos) en la salida
View(flights_shortest)



