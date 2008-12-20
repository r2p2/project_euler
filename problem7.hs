solution = (sieve [2..1000000] !! 10000)

sieve :: [Integer] -> [Integer]
sieve [] = []
sieve (h:t) = h:(sieve ([x|x<-t, x `rem` h /= 0]))
