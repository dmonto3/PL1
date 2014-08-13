module Example where

import NFA
import Data.Set
import qualified Data.Set as Set

states1 :: Set String
states1 = Set.fromList ["q0", "q1", "q2" ]

symbols1 :: Set Char
symbols1 = Set.fromList "01"

initialState1 :: String
initialState1 = "q0"

finalStates1 :: Set String
finalStates1 = Set.fromList ["q2"]

errorState1 :: Set String
errorState1 = Set.singleton "qq"

case1 :: NFA String Char
case1 = MkNFA states1 symbols1 delta initialState1 finalStates1
  where
    delta :: String -> Char -> Set String
    delta "q0" '0' = Set.fromList ["q0", "q1"]
    delta "q0" '1' = Set.singleton "q0"
    delta "q1" '1' = Set.singleton "q2"
    delta _ _      = errorState1
