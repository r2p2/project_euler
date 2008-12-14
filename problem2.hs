solution = sum([x|x <- fib 1 2 [], x `mod` 2 == 0 ])

fib :: Integer -> Integer -> [Integer] -> [Integer]
fib a b list
	| a > 4000000 = list
	| a < 4000000 = fib nextA nextB nextList
	where
		nextA = b
		nextB = a + b
		nextList = list ++ [a]
