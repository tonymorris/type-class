module Data.Functor.Contravariant where

class Contravariant f where
  (-$) ::
    (a -> b)
    -> f b
    -> f a