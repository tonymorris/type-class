{-# LANGUAGE NoImplicitPrelude #-}

module Data.Functor.Apply where

import Data.Functor.Functor

class Functor f => Apply f where
  (<*>) ::
    f (a -> b)
    -> f a
    -> f b
