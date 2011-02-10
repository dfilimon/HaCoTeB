{-
This is an umbrella module reexporting the HaCoTeB.* submodules to allow a
more simple import in other programs using this module (if any) or in testing
code. It also defines the HaCoTeB pipeline in the convert function.
-}

module HaCoTeB
  ( module HaCoTeB.Options
  , module HaCoTeB.Splitter
  , convert
  ) where

import HaCoTeB.Options (Options(..), options)
import HaCoTeB.Splitter

convert file = do
  s <- readFile file
  print $ split s
