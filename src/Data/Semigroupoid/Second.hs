{-# LANGUAGE TypeOperators #-}

module Data.Semigroupoid.Second where

import Data.Functor.Product
import Data.Semigroupoid.Semigroupoid
import Data.Semigroupoid.Tensor

class (Semigroupoid (~>), Tensor (~>)) => Second (~>) where
  second ::
    a ~> b
    -> (c :/\ a) ~> (c :/\ b)

instance Second (->) where
  second f =
    \(a :/\ c) -> (a :/\ f c)
