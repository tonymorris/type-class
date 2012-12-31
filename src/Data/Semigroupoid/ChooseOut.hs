{-# LANGUAGE TypeOperators #-}

module Data.Semigroupoid.ChooseOut where

import Data.Functor.Coproduct
import Data.Semigroupoid.Semigroupoid

class Semigroupoid (~>) => ChooseOut (~>) where
  (+-+) ::
    x ~> a
    -> x ~> b
    -> x ~> (a :\/ b)