{-# LANGUAGE NoImplicitPrelude #-}

module Data.Functor.MonadTrans where

import Data.Functor.Monad

class MonadTrans t where
  lift ::
    Monad m =>
    m a
    -> t m a