proc main() =
  echo "Hello, World!"

when isMainModule: # when is equivalent to "ifdef" in C
  main()

# first version

# func fizzbuzz*(value: int): string =
#   if value mod 3 == 0:
#     "fizz"
#   elif value mod 5 == 0:
#     "buzz"
#   else:
#     $value

# second version, using pattern matching
# fusion/matching extends the basic pattern matching of nim
# it adds the support for '_' (which means 'any value')
import fusion/matching
{.experimental: "caseStmtMacros".}

func fizzbuzz*(value: int): string =
  case (value mod 3, value mod 5):
    of (0, 0):
      "fizzbuzz"
    of (0, _):
      "fizz"
    of (_, 0):
      "buzz"
    else:
      $value

