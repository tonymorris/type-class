{-# LANGUAGE TypeOperators #-}

module Data.Semigroupoid.Disjoint where

import Data.Functor.Coproduct
import Data.Semigroupoid.Semigroupoid

class Semigroupoid (~>) => Disjoint (~>) where
  (+++) ::
    a ~> b
    -> c ~> d
    -> (a :\/ c) ~> (b :\/ d)

instance Disjoint (->) where
  f +++ g =
    \q -> case q of
            L a -> L (f a)
            R b -> R (g b)