{-# LANGUAGE NoImplicitPrelude #-}

module Data.Functor.Extend where

import Data.Functor.Functor

class Functor f => Extend f where
  extend ::
    (f a -> b)
    -> f a
    -> f b