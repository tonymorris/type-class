module Data.Functor.Foldable where

import Data.Semigroupoid.Monoid

class Foldable t where
  foldMap ::
    Monoid m =>
    (a -> m)
    -> t a
    -> m
