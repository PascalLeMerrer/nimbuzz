import std/unittest
from ../src/fizzbuzz import fizzbuzz

suite "fizzbuzz":
  test "":
    check(fizzbuzz(1) == "1")

  test "":
    check(fizzbuzz(2) == "2")

  test "":
    check(fizzbuzz(3) == "fizz")

  test "":
    check(fizzbuzz(5) == "buzz")

  test "":
    check(fizzbuzz(6) == "fizz")

  test "":
    check(fizzbuzz(9) == "fizz")

  test "nil value":
    check(nil.isNil)