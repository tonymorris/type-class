module Data.Functor.Applicative where

import Data.Functor.Apply

class Apply f => Applicative f where
  pure ::
    a
    -> f a

instance Applicative ((->) t) where
  pure a =
    \_ -> a
