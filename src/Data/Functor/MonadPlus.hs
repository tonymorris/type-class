module Data.Functor.MonadPlus where

import Data.Functor.MonadAlt

class MonadAlt f => MonadPlus f where
  midentity ::
    f a