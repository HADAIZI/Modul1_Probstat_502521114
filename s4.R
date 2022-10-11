x = 2
v = 10

#A
P = dchisq(x, 10)
P

#B
n = 100
hist(rchisq(n, v), xlab = "X", ylab = "V", main = "Histogram")

#C
mean = v
mean
variance = 2 * v
variance 