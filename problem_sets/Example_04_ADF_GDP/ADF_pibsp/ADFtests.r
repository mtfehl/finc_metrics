serie=window(ts(read.table("pibsp.dat")/1000,start=2000,freq=4),start=2006)
plot(serie,ylab="GDP Spain")

# Dickey-Fuller test

summary(ur.df(serie,lag=0))
summary(ur.df(serie,lag=0,type="drift"))
summary(ur.df(serie,lag=0,type="trend"))

# Augmented Dickey-Fuller test

summary(ur.df(serie,selectlags="AIC"))
summary(ur.df(serie,selectlags="AIC",type="drift"))
summary(ur.df(serie,selectlags="AIC",type="trend"))

d1serie=diff(serie)
plot(d1serie,ylab="(1-B)GDP Spain")

# Augmented Dickey-Fuller test

summary(ur.df(d1serie,selectlags="AIC"))
summary(ur.df(d1serie,selectlags="AIC",type="drift"))
summary(ur.df(d1serie,selectlags="AIC",type="trend"))
