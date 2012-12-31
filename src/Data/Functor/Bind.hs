module Data.Functor.Bind where

import Data.Functor.Apply

class Apply f => Bind f where
  (=<<) ::
    (a -> f b)
    -> f a
    -> f b