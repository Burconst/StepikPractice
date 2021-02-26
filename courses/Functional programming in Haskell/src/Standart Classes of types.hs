module StandartClassesOfTypes where

class KnownToGork a where
    stomp :: a -> a
    doesEnrageGork :: a -> Bool

class KnownToMork a where
    stab :: a -> a
    doesEnrageMork :: a -> Bool

class (KnownToGork a, KnownToMork a) => KnownToGorkAndMork a where
    stompOrStab :: a -> a
    stompOrStab a   | doesEnrageMork a && doesEnrageGork a = stomp(stab a)
                    | doesEnrageMork a && not(doesEnrageGork a) = stomp a
                    | not(doesEnrageMork a) && doesEnrageGork a = stab a 
                    | otherwise = a

a = 127.2
b = 24.1
c = 20.1
d = 2
ip = show a ++ show b ++ show c ++ show d 


class (Enum a, Bounded a, Eq a) => SafeEnum a where
  ssucc :: a -> a
  ssucc x   | x == maxBound = minBound
            | otherwise = succ x 
  spred :: a -> a
  spred x   | x == minBound = maxBound
            | otherwise = pred x


avg :: Int -> Int -> Int -> Double
avg a b c = (fromIntegral a + fromIntegral b + fromIntegral c)/3.0 