{-# LANGUAGE TypeOperators #-}

module Data.Semigroupoid.Arrow where

import Data.Semigroupoid.Category
import Data.Semigroupoid.ChooseIn
import Data.Semigroupoid.CombineIn
import Data.Semigroupoid.First
import Data.Semigroupoid.Second

class (Category (~>), First (~>), Second (~>), CombineIn (~>), ChooseIn (~>)) => Arrow (~>) where
  into ::
    (a -> b)
    -> a ~> b

instance Arrow (->) where
  into f =
    f
