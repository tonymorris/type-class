module Data.Functor.Plus where

import Data.Functor.Alt

class Alt f => Plus f where
  zero ::
    f a