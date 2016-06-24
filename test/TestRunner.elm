module Main exposing (..)

import ElmTest exposing (..)
import FibonacciTest


tests : Test
tests =
    FibonacciTest.tests

main : Program Never
main =
    runSuite tests
