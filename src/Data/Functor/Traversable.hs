{-# LANGUAGE NoImplicitPrelude #-}

module Data.Functor.Traversable where

import Data.Functor.Applicative
import Data.Functor.Functor

class Functor t => Traversable t where
  traverse ::
    Applicative f =>
    (a -> f b)
    -> t a
    -> f (t b)