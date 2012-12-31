{-# LANGUAGE MultiParamTypeClasses #-}

module Data.Semigroupoid.Reducer where

import Data.Semigroupoid.Semigroup

class Semigroup a => Reducer c a where
  unit ::
    c
    -> a
