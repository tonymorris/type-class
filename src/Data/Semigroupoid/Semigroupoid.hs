{-# LANGUAGE TypeOperators #-}

module Data.Semigroupoid.Semigroupoid where

class Semigroupoid (~>) where
  (.) ::
    b ~> c
    -> a ~> b
    -> a ~> c

instance Semigroupoid (->) where
  f . g =
    \x -> f (g x)
