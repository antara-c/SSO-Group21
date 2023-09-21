data=read.table('C:/Users/antar/Downloads/weather.txt',header=TRUE)
#as.numeric(x)
#summary(as.numeric(x))
#x
#summary(x)
#qqnorm(x)
#hist(x)
#x$temperature

# Summary regarding the Weather 
summary(data)

# Check the normality via QQ Plot
qqnorm(data$temperature, pch = 1, frame = FALSE)
qqline(data$temperature, col = "pink", lwd = 2)

# Graphical summary of the data set
class(data)
str(data)
plot(data$humidity, data$temperature, xlab="Humidity", ylab="Temperature", main="Scatter Plot of Humidity vs. Temperature")


austen = read.table('C:/Users/antar/Downloads/austen.txt',header=TRUE)
austen

onlyausten = subset(austen, select = -c(Sand2) )
onlyausten
chisq.test(onlyausten)
chisq.test(austen)
