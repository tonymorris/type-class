module Data.Functor.BindTrans where

import Data.Functor.Bind
import Data.Functor.MonadTrans

class MonadTrans t => BindTrans t where
  liftB ::
    Bind f =>
    f a
    -> t f a