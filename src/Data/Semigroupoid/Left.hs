{-# LANGUAGE TypeOperators #-}

module Data.Semigroupoid.Left where

import Data.Functor.Coproduct
import Data.Semigroupoid.Semigroupoid
import Data.Semigroupoid.Disjoint

class (Semigroupoid (~>), Disjoint (~>)) => Left (~>) where
  left ::
    a ~> b
    -> (a :\/ c) ~> (b :\/ c)