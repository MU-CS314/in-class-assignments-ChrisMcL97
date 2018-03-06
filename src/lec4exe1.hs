module Main where

main :: IO ()
main =  undefined

data Expr
  = Lit Integer
  | Add Expr Expr
  | Mul Expr Expr
  deriving (Eq, Show)

eval :: Expr -> Integer
eval (Lit a)   = a
eval (Add x y) = eval x + eval y
eval (Mul p q) = eval p * eval q

{- Add(Lit 3)(Mul(Lit 4)(Lit 5)))
   = 3 + 4 * 5
   = 23
-}
