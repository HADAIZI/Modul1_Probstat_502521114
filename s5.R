lambda = 3

#A
set.seed(1)
rnorm(1)
P = dexp(1, rate = lambda)
P

#B
set.seed(1)
hist(rexp(10, rate = lambda), main = "Histogram (10 Random Generations)")
hist(rexp(100, rate = lambda), main = "Histogram (100 Random Generations)")
hist(rexp(1000, rate = lambda), main = "Histogram (1000 Random Generations)")
hist(rexp(10000, rate = lambda), main = "Histogram (10000 Random Generations)")

#C
n = 100
set.seed(1)
mean = mean(rexp(n, rate = lambda))
mean
variance = (sd(rexp(n, rate = lambda))) ^ 2
variance
