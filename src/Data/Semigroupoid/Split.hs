{-# LANGUAGE TypeOperators #-}

module Data.Semigroupoid.Split where

import Data.Semigroupoid.Category
import Data.Semigroupoid.ChooseOut
import Data.Semigroupoid.CombineOut
import Data.Semigroupoid.Left
import Data.Semigroupoid.Right

class (Category (~>), Left (~>), Right (~>), CombineOut (~>), ChooseOut (~>)) => Split (~>) where
  out ::
    (a -> b)
    -> b ~> a