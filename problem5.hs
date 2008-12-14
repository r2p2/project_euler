-- 232792560 nach 7 Minuten 45 Sekunden
main :: IO ()
main = do
	print (devide 2000)

devide :: Int -> Int
devide number
	| a(20, number) = number
	| otherwise = devide (number+1)
	where
		a = \(s,y) -> length [x|x<-[1..s], y `mod` x == 0] == s
