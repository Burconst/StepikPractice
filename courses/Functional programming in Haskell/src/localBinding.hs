seqA :: Integer -> Integer
seqA k  | k >= 0 && k < 3 = k+1
        | k < 0 = error "k must be more than 0"
        | otherwise = let 
            next_a ak_0 ak_1 ak_2 k | k == 3 = ak_2 + ak_1 - 2*ak_0
                                    | otherwise =  next_a ak_1 ak_2 (ak_2 + ak_1 - 2*ak_0) (k-1)
            in next_a 1 2 3 k


sum'n'count :: Integer -> (Integer, Integer)
sum'n'count k   | k == 0 = (0,1)
                | k < 0 = (summ 0 (-k), count 0 (-k))
                | k > 0 = (summ 0 k, count 0 k)
                where
                    count acc k | k == 0 = acc
                                | otherwise = count (acc+1) (k `div` 10)
                    summ acc k  | k == 0 = acc
                                | otherwise = summ (acc + (k `mod` 10)) (k `div` 10)

integration :: (Double -> Double) -> Double -> Double -> Double
integration f a b   | a == b = 0.0
                    | a > b = -(integration f b a)
                    | otherwise = summ f 0 1000 ((b-a)/1000) a (a+((b-a)/1000)) where
                        summ :: (Double -> Double) -> Double -> Integer -> Double -> Double -> Double -> Double
                        summ f prev_val n h xi xi_1 | n == 0 = prev_val
                                                    | otherwise = summ f (prev_val + (step f xi xi_1)) (n-1) h xi_1 (xi_1+h)
                                                        where
                                                            step f xi xi_1 = ((f xi_1) + (f xi))*(xi_1 - xi)/2

