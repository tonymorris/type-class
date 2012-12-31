{-# LANGUAGE TypeOperators #-}

module Data.Semigroupoid.CombineOut where

import Data.Functor.Product
import Data.Semigroupoid.Semigroupoid

class Semigroupoid (~>) => CombineOut (~>) where
  (>*<) ::
    a ~> x
    -> b ~> x
    -> (a :/\ b) ~> x