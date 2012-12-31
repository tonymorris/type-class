{-# LANGUAGE TypeOperators #-}

module Data.Semigroupoid.ChooseIn where

import Data.Functor.Coproduct
import Data.Semigroupoid.Semigroupoid

class Semigroupoid (~>) => ChooseIn (~>) where
  (>+<) ::
    a ~> x
    -> b ~> x
    -> (a :\/ b) ~> x

instance ChooseIn (->) where
  f >+< g =
    \q -> case q of
            L a -> f a
            R b -> g b