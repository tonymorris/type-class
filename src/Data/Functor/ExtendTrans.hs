module Data.Functor.ExtendTrans where

import Data.Functor.ComonadTrans
import Data.Functor.Extend

class ComonadTrans t => ExtendTrans t where
  lowerB ::
    Extend f =>
    t f a
    -> f a