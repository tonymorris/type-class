{-# LANGUAGE TypeOperators #-}

module Data.Semigroupoid.Right where

import Data.Functor.Coproduct
import Data.Semigroupoid.Disjoint
import Data.Semigroupoid.Semigroupoid

class (Semigroupoid (~>), Disjoint (~>)) => Right (~>) where
  right ::
    a ~> b
    -> (c :\/ a) ~> (c :\/ b)
