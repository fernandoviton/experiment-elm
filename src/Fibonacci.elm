module Fibonacci exposing (fibonacci)

import Html exposing (text)

fibonacci length =
  if length == 0 then []
  else if length == 1 then [1]
  else fib [1, 1] 1 1 (length - 2)


fib curFib prev last lengthToAppend =
  if lengthToAppend <= 0 then curFib
  else
    let
      next =
        prev + last
      newLength =
        lengthToAppend - 1
      in
        (fib (curFib ++ [next]) last next newLength)


main =
  text (toString (fibonacci 100))
