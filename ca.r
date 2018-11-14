#2.2
a <- 3^2 * 4^(1/8)
a <- a / 2.33
a
b <- -8.2e-13
a * b

#2.3
a <- seq(from=5,to=-11,by=-0.3)
b <- rev(a)

c <- rep(rep(c(-1.3,5.7,-9),10), 2)
c <- sort(c, decreasing = TRUE)

d <- c(6:12, rep(5.3, 3), -3, seq(from=102, to=length(c), by=(length(c)-102) / 8))
length(d)

#2.4
a <- c(3:6, rep(c(2,-5.1,-33), 2), ((7/42) + 2))
b <- c(a[1], a[length(a)])
c <- a[3:(length(a) - 1)]
d <- c(b[1], c, b[2])
a <- sort(a)
e <- a[length(a):1]
e == sort(a, decreasing = TRUE)
g <- c(rep(c[3], 3), rep(c[6], 4), c[length(c)])

#2.5
a <- rep(c(2,0.5,1), 3)
a <- subset(a, a==1)

#3.1
a <- matrix(c(4.3,3.1,8.2,8.2,3.2,0.9,1.6,6.5), 4, 2)
dim(a[-3,])
a[,2] <- sort(a[,2], decreasing = FALSE)
d <- matrix(a[-4,-1])
e <- a[3:4,]
#Fuck that f question
#CBA to do the array stuff but you make them like this
testArray <- array(data = rep(c(1,2,3), 20), dim = c(6,5,2))
testArray


#6.2
d <- matrix(c(34,23,33,42,41,0,1,1,0,0,1,2,1,1,2), 5, 3)
d <- as.data.frame(d)
d[,2] <- as.logical(d[,2])
d[,3] <- as.factor(d[,3])

#7.1
plot(0,xlim=c(-3,3), ylim=c(7,13))
#Horizontal
arrows(x0=-2.5, y0=10,x1=-1, y1=10)
arrows(x0=2.5, y0=10,x1=1, y1=10)
#left arrows
arrows(x0=-2.5, y0=7.5, x1=-1, y1=9.5)
arrows(x0=-2.5, y0=12.5, x1=-1, y1=10.5)
#right arrows
arrows(x0=2.5, y0=7.5, x1=1, y1=9.5)
arrows(x0=2.5, y0=12.5, x1=1, y1=10.5)
#Vertical/Horizontal lines
abline(v=-3, lty=2)
abline(v=3, lty=2)
abline(h=7, lty=2)
abline(h=13, lty=2)
#Text
text(x=0, y=10, label="SOMETHING\nPROFOUND")


#Part b
height <- c(55,85,75,42,93,63,58,75,89,67)
sex <- factor(c("female","male","male","female","male","male","female","male","male","female"))
weight <- c(161,185,174,154,188,178,170,167,181,178)

plotData <- data.frame(height, weight, sex)
plot(0, xlim=c(min(plotData$weight), max(plotData$weight)), ylim=c(min(plotData$height), max(plotData$height)),
     xlab="Weight", ylab="Height", main="Weight/Height grouped by Sex")
points(plotData$weight[plotData$sex=="male"], plotData$height[plotData$sex=="male"], col="blue")
points(plotData$weight[plotData$sex=="female"], plotData$height[plotData$sex=="female"], col="red")
