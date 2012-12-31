{-# LANGUAGE NoImplicitPrelude #-}

module Data.Functor.Functor where

class Functor f where
  ($) ::
    (a -> b)
    -> f a
    -> f b

instance Functor ((->) t) where
  f $ g =
    \x -> f (g x)