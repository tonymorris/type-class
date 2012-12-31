{-# LANGUAGE NoImplicitPrelude, Rank2Types #-}

module Data.Functor.MonadTransform where

import Data.Functor.Monad

class MonadTransform t where
  transform ::
    (Monad f, Monad g) =>
    (forall z. f z -> g z)
    -> t f a
    -> t g a