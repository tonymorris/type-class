{-# LANGUAGE TypeOperators #-}

module Data.Semigroupoid.Category where

import Data.Semigroupoid.Semigroupoid

class Semigroupoid (~>) => Category (~>) where
  id ::
    a ~> a