newtype Eval = 
  deriving(Eq, Show)

eval :: a -> Integer
eval

data Lit = Lit Integer

instance Eval Lit where
  eval (Lit n) = n
