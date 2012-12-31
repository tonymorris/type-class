module Data.Functor.ExtendHoist where

import Data.Functor.ComonadHoist
import Data.Functor.Extend
import Data.Functor.Id

class ComonadHoist t => ExtendHoist t where
  cohoistB ::
    Extend f =>
    t f a
    -> t Id a
