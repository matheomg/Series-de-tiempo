# Librerias ---------------------------------------------------------------
library(Ecdat)
library(forecast)

# Data --------------------------------------------------------------------
data(AirPassengers)
Air = AirPassengers
plot(as.ts(Air))
plot(decompose(Air,type="multiplicative"))
Air = ts(data=Air,frequency = 12,start=c(1949,1))
# Tendencia ---------------------------------------------------------------
trend_air = ma(Air, order = 12, centre = T)
plot(Air,col="red")
lines(trend_air,col="blue")

# Quitar tendencia --------------------------------------------------------
detrend_air = Air / trend_air
plot(as.ts(detrend_air))

# Estacionalidad ----------------------------------------------------------
m_air = t(matrix(data = detrend_air, nrow = 12))
seasonal_air = colMeans(m_air, na.rm= T)
plot(as.ts(rep(seasonal_air,12)))
seasonal_air = ts(rep(seasonal_air,12),frequency = 12,start=c(1949,1))
plot(seasonal_air)

plot(detrend_air, col = "Blue")
lines(seasonal_air, col = "red")

# Residuo -----------------------------------------------------------------
noise_air = (Air / trend_air) / seasonal_air
plot(as.ts(noise_air))

# Recontrucción serie original --------------------------------------------
recomposed_air = trend_air*seasonal_air*noise_air
plot(as.ts(recomposed_air))


plot(decompose(Air, "multiplicative"))








