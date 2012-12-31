module Data.Functor.Monad where

import Data.Functor.Applicative
import Data.Functor.Bind

class (Applicative f, Bind f) => Monad f where
