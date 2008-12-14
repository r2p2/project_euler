solution = sumOfDigits (fac 100)

fac :: Integer -> Integer
fac n
	| n == 1 = 1
	| n > 1 = n * fac (n-1)

sumOfDigits :: Integer -> Integer
sumOfDigits number
	| number == 0 = 0
	| number /= 0 =
			(number `mod` 10) + sumOfDigits(fromIntegral(div number 10))
