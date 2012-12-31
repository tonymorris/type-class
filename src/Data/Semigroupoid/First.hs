{-# LANGUAGE TypeOperators #-}

module Data.Semigroupoid.First where

import Data.Functor.Product
import Data.Semigroupoid.Semigroupoid
import Data.Semigroupoid.Tensor

class (Semigroupoid (~>), Tensor (~>)) => First (~>) where
  first ::
    a ~> b
    -> (a :/\ c) ~> (b :/\ c)

instance First (->) where
  first f =
    \(a :/\ c) -> (f a :/\ c)
