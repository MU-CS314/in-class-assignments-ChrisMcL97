class Eval a where
  eval :: a -> Integer

data Lit = Lit Integer

instance Eval Lit where
  eval (Lit n) = n


data Add x y = Add x y

instance (Eval x, Eval y) => Eval (Add x y) where
    eval (Add x y) = eval x + eval y


data Mul p q = Mul p q

instance (Eval p, Eval q) => Eval (Mul p q) where
    eval (Mul p q) = eval p * eval q


data Subt s t = Subt s t

instance (Eval s, Eval t) => Eval (Subt s t) where
    eval (Subt s t) = eval s - eval t
