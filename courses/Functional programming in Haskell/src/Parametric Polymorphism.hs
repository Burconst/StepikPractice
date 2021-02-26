module Demo where
import Data.Function

getSecondFrom :: t -> t2 -> t1 -> t2
getSecondFrom x y z = y

multSecond = g1 `on` h1
g1 = (*)
h1 = snd

on3 :: (b -> b -> b -> c) -> (a -> b) -> a -> a -> a -> c
on3 op f x y z = op (f x) (f y) (f z)

doItYourself = f . g . h
f = (logBase 2)
g = (^3)
h = (max 42)

