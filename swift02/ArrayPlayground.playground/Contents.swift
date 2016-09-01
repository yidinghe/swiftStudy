//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var numbers: Array<Int> = [0,1,2,3,4,5]
var strings: Array<String> = ["A", "E", "I", "O", "U"]

var emptyArray1: Array<Int> = []
var emptyArray2 = [Int]()
var emptyArray3 = Array<Int>()

var allZeros = Array<Int>(count: 5, repeatedValue: 0)

strings.count

strings.isEmpty
emptyArray1.isEmpty

strings[2]
strings.first
strings.last

let string1 = strings.first ?? "No string"

strings.minElement()
strings.maxElement()

strings[2..<strings.count]

strings.contains("B")
strings.indexOf("B")

for number in numbers{
    print(number)
}

for (index, string) in strings.enumerate(){
    print("index:\(index+1)..."+"string:\(string)")
}

var oneToFive = [0, 1, 2, 3, 4, 5]

numbers == oneToFive

var courses = ["HI", "HAHA"]

courses.append("NICE")
courses += ["ADD"]
courses.insert("NEW", atIndex: 2)
courses.removeLast()
courses.removeFirst()


print(courses)









