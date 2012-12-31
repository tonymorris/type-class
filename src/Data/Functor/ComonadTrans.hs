module Data.Functor.ComonadTrans where

import Data.Functor.Comonad

class ComonadTrans t where
  lower ::
    Comonad f =>
    t f a
    -> f a