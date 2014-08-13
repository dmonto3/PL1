module NFA  where

import Data.Set ( Set )

-- | A non-deterministic finite automaton.
data NFA state symbol =
  MkNFA { statesNFA  :: Set state                    --  States
        , symbolsNFA :: Set symbol                   --  Input symbols
        , deltaNFA   :: state -> symbol -> Set state --  Transition function
        , startNFA   :: state                        --  Start state
        , finalsNFA  :: Set state                    --  Final state
        }
