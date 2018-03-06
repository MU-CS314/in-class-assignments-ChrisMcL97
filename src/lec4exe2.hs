newtype Eval a where
  eval :: a -> Integer

data Lit = Lit Integer

instance Eval Lit where
  eval (Lit n) = n
