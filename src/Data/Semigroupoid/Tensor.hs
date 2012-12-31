{-# LANGUAGE TypeOperators #-}

module Data.Semigroupoid.Tensor where

import Data.Functor.Product
import Data.Semigroupoid.Semigroupoid

class Semigroupoid (~>) => Tensor (~>) where
  (***) ::
    a ~> b
    -> c ~> d
    -> (a :/\ c) ~> (b :/\ d)

instance Tensor (->) where
  f *** g =
    \(a :/\ c) -> (f a :/\ g c)
