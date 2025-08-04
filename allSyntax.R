theta<-seq(0,2*pi,length.out=100)
r<-1+2*cos(theta)
x<-r*cos(theta)
y<-r*sin(theta)
plot(x,y,col="blue",type="l",xlab="X",ylab="Y")

#plotting of curves
x<-seq(-5,5,by=0.01)
f<-function(x)
{
  return(x^2+2*x+1)
}
plot(x,f(x),type="l",col="red",main="quadratic function",xlab="X",ylab="Y")

#ploting two curves and intersecting each other
f<-function(x)
{
  return(x^2+1)
}
g<-function(x)
{
  return(2*x)
}
seq(-2,2,by=0.01)
plot(x,f(x),col="red",type="l",main="intersecting two curves",xlab="x",ylab="Y")
lines(x,g(x),col="blue")
points(1,2,type="p",pch=40,cex=3,col="green")

#solving differential equation
library(deSolve)
f<-function(times,y,p)
{
  k=p[1]
  ydot=k*y
  list(ydot)
}
t<-seq(0,2,by=0.01)
p<-c(k=0.5)
s<-c(y=2)
out<-ode(y=y0,times=t,func=f,parms=p)
print(out)
plot(out)
  



