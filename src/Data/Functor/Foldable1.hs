module Data.Functor.Foldable1 where

import Data.Functor.Foldable
import Data.Semigroupoid.Semigroup

class Foldable t => Foldable1 t where
  foldMap1 ::
    Semigroup m =>
    (a -> m)
    -> t a
    -> m