primeFactorOf :: Integer -> [Integer]
primeFactorOf number =
	primeFactorOf_helper number number []

primeFactorOf_helper :: Integer -> Integer -> [Integer] -> [Integer]
primeFactorOf_helper number counter list
	| counter == 0 =
		list
	| counter > 0 =
		case isPrime counter of
			True ->
				if number `mod` counter == 0
					then
						primeFactorOf_helper number (counter-1) (counter : list)
					else
						primeFactorOf_helper number (counter-1) list
			False -> primeFactorOf_helper number (counter-1) list

---------------------------------------------------------------------
-- to slow -- 
isPrime :: Integer -> Bool
isPrime number =
	isPrime_helper number 2 number

isPrime_helper :: Integer -> Integer -> Integer -> Bool
isPrime_helper number count to
	| number < 2 =
		False
	| count == to =
		True
	| number `mod` count == 0 =
		False
	| count < to =
		isPrime_helper number (count+1) to
