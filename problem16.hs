solution :: Integer
solution = sumOfDigits (round (2**1000))

sumOfDigits :: Integer -> Integer
sumOfDigits number
	| number == 0 = 0
	| number /= 0 =
			(number `mod` 10) + sumOfDigits(fromIntegral(div number 10))
