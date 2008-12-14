solution = fib 1 2 2

fib :: Integer -> Integer -> Integer -> Integer
fib a b nr
	| digits >= 1000 = nr
	| digits < 1000 =
		fib b (a+b) (nr+1)
		where
			digits = countDigits a

-- Funktioniert nicht mit countDigits 0
countDigits :: Integer -> Integer
countDigits number
	| number == 0 = 0
	| number /= 0 =
			1 + countDigits(fromIntegral(div number 10))
