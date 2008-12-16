-- danke astro
sieve :: [Integer] -> [Integer]
sieve [] = []
sieve (h:t) = h:(sieve ([x|x<-t, x `rem` h /= 0]))
