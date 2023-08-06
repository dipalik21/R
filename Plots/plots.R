airquality<-datasets::airquality

#top 10 rows and last 10 rows
head(airquality,10)
tail(airquality,10)

# columns
airquality[,c(1,2)]

df<-airquality[-6]

airquality$Temp

#####Summary of the data

summary(airquality$Ozone)

summary(airquality)

#######Plots

plot(airquality$Wind)
plot(airquality$Temp,airquality$Wind,type = "p")
plot(airquality)

########points and lines
plot(airquality$Wind, type="l")    #p :points, l:lines, b=both
plot(airquality$Wind,xlab='ozone concentration', ylab='no. of instances',main='ozone levels in ny city',col='blue')


####Horizontal bar plot
barplot(airquality$Ozone,main='ozone concentration in air',ylab='ozone levels', horiz = F,axes=F)

#Histogram
hist(airquality$Temp)
hist(airquality$Temp,main='Solar radiation values in air',xlab='solar rad.',col='green')

#Single box plot
boxplot(airquality$Wind,main='Boxplot')
boxplot.stats(airquality$Wind)$out

#multiple boxplots
boxplot(airquality[,1:4],main='multiple')

#margin of the grid (mar) par(mar = c(bottom, left, top, right))
#no of rows and columns(mfrow),
#whether a border is to be included(bty)
#and position of the
#labels(las:1 for horizontal, las:0 for vertical)
#bty- box around the plot
par(mfrow=c(3,3),mar=c(2,5,2,1),las=1,bty="o")
plot(airquality$Ozone)
plot(airquality$Ozone,airquality$Wind)
plot(airquality$Ozone,type="l")
plot(airquality$Ozone,type="l")
plot(airquality$Ozone,type="l")
barplot(airquality$Ozone,main="ozone conc.",xlab='ozone lev',col='green',horiz=TRUE)
hist(airquality$Solar.R)
boxplot(airquality$Solar.R)
boxplot(airquality[,0:4],main='multiple box')
