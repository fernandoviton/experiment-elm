
module FibonacciTest exposing (..)

import ElmTest exposing (..)
import Fibonacci exposing (..)

tests : Test
tests =
  suite "Fibonacci Tests"
    [ test "empty"
      <| assertEqual (fib [] 0) []
    ]


main : Program Never
main =
    runSuite tests
