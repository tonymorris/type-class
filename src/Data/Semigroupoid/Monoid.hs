module Data.Semigroupoid.Monoid where

import Data.Semigroupoid.Semigroup

class Semigroup a => Monoid a where
  identity ::
    a