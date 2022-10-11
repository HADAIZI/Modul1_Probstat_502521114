lambda = 4.5

# A
x = 6
P = dpois(x, lambda)
P

# B
x = 6
n = 365
hist(rpois(n, lambda), main = "Histogram")

# C

# D
mean = variance = lambda
mean
variance