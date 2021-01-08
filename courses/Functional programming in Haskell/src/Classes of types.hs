module Demo where

class Printable a where
    toString :: a -> [Char]

instance Printable Bool where
    toString x = if x then "true" else "false" 

instance Printable () where
    toString x = "unit type"

instance (Printable a, Printable b) => Printable (a,b) where
    toString x = "(" ++ toString (fst x) ++ "," ++ toString (snd x) ++ ")"