//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


var emptyString = ""
emptyString.isEmpty

for c in str.characters{
    print(c)
}


let mark: Character = "!"

str + String(mark)

str.append(mark)
str.characters.count

let startIndex = str.startIndex

str[startIndex.advancedBy(5)]

let spaceIndex = startIndex.advancedBy(6)

str[spaceIndex.predecessor()]

str[spaceIndex.successor()]

str[startIndex..<spaceIndex]

let range = startIndex..<spaceIndex.predecessor()

str[range]

str.replaceRange(range, with: "Hi")
str.appendContentsOf("!!!")
str.insert("?", atIndex: startIndex)
str.removeRange(str.endIndex.advancedBy(-2)..<str.endIndex)


str.uppercaseString
str.lowercaseString
str.capitalizedString


let s = String(format: "one third is %.2f", 1.0/3.0)

let s2: String = NSString(format: "one trird is %.2f", 1.0/3.0) as String





