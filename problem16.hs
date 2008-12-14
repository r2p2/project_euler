-- solution = 1189 # Stimmt aber irgendwie nicht
solution :: Integer
solution = sumOfDigits (round (2**15))

sumOfDigits :: Integer -> Integer
sumOfDigits number
	| number == 0 = 0
	| number /= 0 =
			(number `mod` 10) + sumOfDigits(floor(fromIntegral number/10))
