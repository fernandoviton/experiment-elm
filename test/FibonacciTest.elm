module FibonacciTest exposing (..)

import ElmTest exposing (..)
import Fibonacci exposing (..)

tests : Test
tests =
  suite "Fibonacci Tests"
    [ test "empty"
      <| assertEqual [] (fibonacci 0)
    , test "length 1"
      <| assertEqual [1] (fibonacci 1)
    , test "length 2"
      <| assertEqual [1,1] (fibonacci 2)
    , test "length 3"
      <| assertEqual [1,1,2] (fibonacci 3)
    , test "length 4"
      <| assertEqual [1,1,2,3] (fibonacci 4)
    , test "length 7"
      <| assertEqual [1,1,2,3,5,8,13] (fibonacci 7)
    ]
