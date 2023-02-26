library(readr)
library(dplyr)
library(tidyverse)

myData <- nycflights13::flights

#5.6.7 Ejercicios

#     1. Haga una lluvia de ideas sobre al menos 5 formas diferentes de evaluar las características típicas
#        de retraso de un grupo de vuelos. Considerelos siguientes escenarios:

#            a. Un vuelo llega 15 minutos antes el 50% del tiempo y 15 minutos tarde el 50% del tiempo.

ANTES <- myData%>%
  filter (arr_delay== (-15))

DESPUES <- myData%>%
  filter (arr_delay== 15)

MITAD_TIEMPO <- myData%>%
  filter (air_time<=30)

ANTES_MITAD_TIEMPO<- myData%>%
  filter (arr_delay== (-15),air_time==30)
DESPUES_MITAD_TIEMPO<- myData%>%
  filter (arr_delay== (15),air_time==30)

#     b. Un vuelo siempre llega 10 minutos tarde.

SIEMPRE_TARDE <- myData%>%
  filter (arr_delay== 10)

#     c. Un vuelo llega 30 minutos antes el 50% del tiempo y 30 minutos tarde el 50% del tiempo.

ANTES_30 <- myData%>%
  filter (arr_delay== (-30))

DESPUES_30 <- myData%>%
  filter (arr_delay== 30)

MITAD_TIEMPO_60 <- myData%>%
  filter (air_time<=60)

ANTES_MITAD_30_TIEMPO_60<- myData%>%
  filter (arr_delay== (-30),air_time==60)
DESPUES_MITAD_30_TIEMPO_60<- myData%>%
  filter (arr_delay== (30),air_time==60)


#     d El 99% de las veces un vuelo es puntual. El 1% de las veces llega 2 horas tarde.

PUNTUAL <- myData %>%
  filter(arr_delay< 120)
DOS_HORAS_TARDE <- myData %>%
  filter(arr_delay>= 120)


#     e ¿Qué es más importante: el retraso en la llegada o el retraso en la salida?

# Consideramos si sabemos la hora de salida del vuelo y hay un retraso de llegada segun la hora programada puede generar
# incertidunbre ya que pudo haber pasado algo en el vuelo o en la logistica de trasporte aereo. si embargo un retraso en
# la salida genera molestias para el usuario, pero no hay inseguridad para el, por tal motivo es mas importante el retraso
# en la llegada que en la salida en termino de seguridad para quien usan el servicio y sus servidores.

