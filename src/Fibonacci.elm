module Fibonacci exposing (fibonacci)

import Html exposing (text)

fibonacci length =
  if length == 0 then []
  else fib [0, 1] length

fib curFib lengthToAppend =
  if lengthToAppend <= 0 then curFib
  else (fib (curFib ++ [(List.sum (List.drop ((List.length curFib) - 2) curFib))]) (lengthToAppend - 1))

main =
  text (toString (fibonacci 100))
