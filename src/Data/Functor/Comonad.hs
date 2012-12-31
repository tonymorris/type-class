module Data.Functor.Comonad where

import Data.Functor.Extend

class Extend f => Comonad f where
  extract ::
    f a
    -> a