//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var array: [Int] = []

for _ in 0..<100{
    array.append(random()%1000)
}

func biggerNumberFirst( a: Int , _ b: Int ) -> Bool {
    return a > b
}

array.sort(biggerNumberFirst)

array.sort({ (a: Int, b: Int) -> Bool in return a > b})

array.sort({ a, b in return a > b })

array.sort({ a, b in a > b})

array.sort({ $0 > $1 })
array.sort(>)


//Trailing Closure

array.sort(){a, b in
    return a > b
}

var number: Int = 700

array.sortInPlace(){ a, b in
    return abs(a-number) < abs(b-number)
}
array
func runningMetersWithMetersPerDay(metersPerday: Int) -> () -> Int {
    
    var totalMeters = 0
    return{
        totalMeters += metersPerday
        return totalMeters
    }
}

var planA = runningMetersWithMetersPerDay(2000)
planA()
planA()

var planB = runningMetersWithMetersPerDay(5000)
planB()



