n = 100
mean = 50
sd = 8

#A
set.seed(1)
d <- rnorm(n, mean, sd)
d
summary(d)
x1 = runif(1, min = min(d), max = mean)
x2 = runif(1, min = mean, max = max(d))
x1
x2
P1 <- pnorm(x1, mean, sd)
P1
P2 <- pnorm(x2, mean, sd)
P2
P <- P2 - P1
plot(d)

#B
breaks = 50
hist(d, breaks, main = "5025211114_Adam Haidar Azizi_ProbstatA_DNhistogram")

#C
variance = (sd(d)) ^ 2
variance
