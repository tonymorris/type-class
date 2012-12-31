{-# LANGUAGE TypeOperators #-}

module Data.Functor.Coproduct where

data a :\/ b =
  L a
  | R b