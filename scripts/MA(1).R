T = 200 # Número de pasos que se quiere crear
sigma2_e = 1
set.seed(123)
e = rnorm(T,mean=0, sd=sqrt(sigma2_e))
theta1 = 0.8

y = numeric(0)
y[1]=e[1]
for (t in 2:T){
  y[t]=e[t]+theta1*e[t-1] 
}
plot(as.ts(y))

acf(y)
rho1 = cor(y[2:200], y[1:199])

mean(y)
