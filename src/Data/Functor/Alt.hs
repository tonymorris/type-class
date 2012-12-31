{-# LANGUAGE NoImplicitPrelude #-}

module Data.Functor.Alt where

import Data.Functor.Functor

class Functor f => Alt f where
  (<|>) ::
    f a
    -> f a
    -> f a