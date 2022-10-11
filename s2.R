n = 20
p = 0.2

#A
x = 4
peluang = dbinom(x, n, p, log = FALSE)
peluang

#B
hist(rbinom(x, n, p), xlab = "X", ylab = "Frekuensi", main = "Histogram")

#C
mean = n * p
variance = n * p * (1 - p)
mean
variance




