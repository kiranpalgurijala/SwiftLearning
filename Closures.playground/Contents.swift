//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playing with closures today."

var sum: (Int, Int) -> (Int) = { x, y in
return x + y
}

sum(5, 4)

var someArray = [Int]()
someArray.append(sum(5,4))
print(someArray)


var sumShort: (Int, Int) -> (Int) = {
    return $0 + $1
}

sumShort(4, 5)

var diff: (Int, Int) -> (Int) = { x, y in
return x-y
}

diff(1, 10)

var multiply: (Int, Int) -> (Int) = { x, y in
    return x*y
}

multiply(3, 3)

var divide: (Double, Double) -> (Double) = { x, y in
return x/y
}

divide(81, 9)

var welcomeMessage: (String) -> (String) = {
return "Hello "+$0+"! How is it going today?"
}

welcomeMessage("Chitti")
