module Main where

import System.Environment qualified as SE
import System.Exit qualified as E

main :: IO ()
main = do
  args <- SE.getArgs
  if null args
    then do
      putStrLn "Error - file name not provided."
      E.exitWith (E.ExitFailure 1)
    else do
      let filename = head args
      contents <- readFile filename
      putStrLn contents
