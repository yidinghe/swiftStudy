//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


var aWinInt = 0
var bWinInt = 0
var gameTimesInt = 0

while aWinInt<3&&bWinInt<3{
    gameTimesInt = gameTimesInt + 1
    let a = arc4random_uniform(6) + 1
    let b = arc4random_uniform(6) + 1
    print("a is \(a), b is \(b)", separator:",", terminator: ":")
    
    if a>b{
        aWinInt = aWinInt + 1
        bWinInt = 0
        print("a win")
    }
    else if a<b{
        aWinInt = 0
        bWinInt = bWinInt + 1
        print("b win")
    }
    else{
        aWinInt = 0
        bWinInt = 0
        print("draw")
    }
}

print("gameTimesInt is \(gameTimesInt)")


let age = 19
if case 10...19 = age where age >= 18{
    print("age = \(age)")
}

for case let i in 1...100 where i % 3 == 0{
    print("i is \(i)")
}
