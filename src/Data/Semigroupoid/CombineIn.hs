{-# LANGUAGE TypeOperators #-}

module Data.Semigroupoid.CombineIn where

import Data.Functor.Product
import Data.Semigroupoid.Semigroupoid

class Semigroupoid (~>) => CombineIn (~>) where
  (*-*) ::
    x ~> a
    -> x ~> b
    -> x ~> (a :/\ b)

instance CombineIn (->) where
  f *-* g =
    \x -> f x :/\ g x