# Título: Generar una marcha aleatoria
# Autor: Matheo Morales
# Fecha: 12/10/2024

# Marcha aleatoria --------------------------------------------------------
t = 100 # Número de pasos que se quiere crear
sigma2_e = 1
set.seed(123)
e = rnorm(t,mean=0, sd=sqrt(sigma2_e))
plot(as.ts(e))

y = numeric(0)
y[1]=e[1]
for (i in 2:t){
  y[i]=y[i-1]+e[i] 
}
plot(as.ts(y))

#otra forma
y2 = cumsum(e) # Genera la marcha aleatoria
plot(as.ts(y2))
