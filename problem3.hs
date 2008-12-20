-- viel zu langsam --

main = print solution

solution :: [Integer]
solution =
	primeFactorOf 600851475143 primes
	where
		primes = sieve [2..truncate(sqrt 600851475143)]

primeFactorOf :: Integer -> [Integer] -> [Integer]
primeFactorOf number primes =
	primeFactorOf_helper number number [] primes

primeFactorOf_helper :: Integer -> Integer -> [Integer] -> [Integer] -> [Integer]
primeFactorOf_helper number counter list primes
	| counter == 0 =
		list
	| counter > 0 =
		case isPrime counter primes of
			True ->
				if number `mod` counter == 0
					then
						primeFactorOf_helper number (counter-1) (counter : list) primes
					else
						primeFactorOf_helper number (counter-1) list primes
			False -> primeFactorOf_helper number (counter-1) list primes 

---------------------------------------------------------------------
-- faster -- 
isPrime :: Integer -> [Integer] -> Bool
isPrime number primelist = number `elem` primelist

sieve :: [Integer] -> [Integer]
sieve [] = []
sieve (h:t) = h:(sieve ([x|x<-t, x `rem` h /= 0]))
