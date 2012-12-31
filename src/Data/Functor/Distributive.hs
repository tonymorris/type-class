{-# LANGUAGE NoImplicitPrelude #-}

module Data.Functor.Distributive where

import Data.Functor.Functor

class Functor t => Distributive t where
  distribute ::
    Functor f =>
    (a -> t b)
    -> f a
    -> t (f b)