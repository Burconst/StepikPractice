doubleFact :: Integer -> Integer
doubleFact n =  if n == 0 || n == -1 then 1 else n*doubleFact(n-2)

fibonacci1 :: Integer -> Integer
fibonacci1 n | n == 0 = 0
            | n == 1 = 1
            | n == -1 = 1
            | n > 1 = fibonacci1(n - 1) + fibonacci1(n - 2)
            | n < -1 = -fibonacci1(n + 1) + fibonacci1(n + 2) 

fibonacci2 :: Integer -> Integer
fibonacci2 n | n >= 0 = helper 0 1 n
            | n < 0 = (helper 0 1 (-n))*(-1)^((-n+1) `mod` 2)

helper :: Integer -> Integer -> Integer -> Integer
helper acc1 acc2 n  | n == 0 = 0
                    | n == 1 = acc2  
                    | n > 1 = helper acc2 (acc1 + acc2) (n-1) 
