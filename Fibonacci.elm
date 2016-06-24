import Html exposing (text)

fib curFib maxLength =
  if (List.length curFib) >= maxLength then curFib
  else (fib (curFib ++ [(List.sum (List.drop ((List.length curFib) - 2) curFib))]) maxLength)

main =
  text (toString (fib [0, 1] 100))
