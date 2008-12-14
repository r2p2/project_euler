solution = sum [x|x<-[1..9999], (x `mod` 3 == 0) || (x `mod` 5 == 0)]
