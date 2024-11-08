library(readxl)
library(stats)
library(mFilter)
Datos <- read_excel("C:/GitHub/Series_de_tiempo/data/Ejercicio 1.xlsx")
View(Datos)
plot(Datos$Inflación)
Infl <- ts(Datos$Inflación, start = c(2010,1), frequency = 12)
plot(Infl)
plot(decompose(Infl), "Aditive")

SR <- ts(Datos$`Índice salario real`, start = c(2010,1), frequency = 12)
plot(SR)
plot(decompose(SR, "additive"))
plot(decompose(SR, "multiplicative"))

# Filtro de Hodrick-Prescott
HP.SR = hpfilter(SR, freq= 12, type="frequency")
plot(HP.SR)

# Filtro Holt Winters
HW.SR = HoltWinters(SR)
plot(HW.SR)
plot(fitted(HW.SR))
