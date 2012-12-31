module Data.Semigroupoid.Semigroup where

class Semigroup a where
  (<>) ::
    a
    -> a
    -> a