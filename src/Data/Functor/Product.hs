{-# LANGUAGE TypeOperators #-}

module Data.Functor.Product where

data a :/\ b =
  (:/\) a b
