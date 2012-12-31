{-# LANGUAGE NoImplicitPrelude #-}

module Data.Functor.MonadAlt where

import Data.Functor.Plus
import Data.Functor.Monad

class (Plus f, Monad f) => MonadAlt f where
  (<+>) ::
    f a
    -> f a
    -> f a
