# Cargar la librería dplyr
library(dplyr)

# Ordenar los valores faltantes al principio del marco de datos starwars
starwars_ordenado <- arrange(starwars,desc(is.na(mass)))

# Ver el marco de datos ordenado
head(starwars_ordenado)
view(starwars_ordenado)

