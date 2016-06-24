module FibonacciTest exposing (..)

import ElmTest exposing (..)
import Fibonacci exposing (..)

tests : Test
tests =
  suite "Fibonacci Tests"
    [ test "empty"
      <| assertEqual [] (fibonacci 0)
    ]
