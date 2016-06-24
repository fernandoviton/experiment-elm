import Html exposing (text)

fib curFib lengthToAppend =
  if lengthToAppend <= 0 then curFib
  else (fib (curFib ++ [(List.sum (List.drop ((List.length curFib) - 2) curFib))]) (lengthToAppend - 1))

main =
  text (toString (fib [0, 1] 100))
