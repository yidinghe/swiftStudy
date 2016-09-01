//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//hashset from Java

var skillsOfA: Set<String> = ["swift", "OC"]
var skillsOfB: Set<String> = ["HTML", "CSS", "JS"]
var skillsOfC: Set<String> = ["swift", "HTML", "CSS"]


//union 本集合不变， return新集合
skillsOfA.union(skillsOfC)
skillsOfA

//unionInPlace 调用集合变化
skillsOfA.unionInPlace(skillsOfC)
skillsOfA

skillsOfA.intersect(skillsOfB)
skillsOfA.subtract(skillsOfB)
skillsOfA.exclusiveOr(skillsOfB)


skillsOfB.isSubsetOf(skillsOfA)
skillsOfB.isStrictSubsetOf(skillsOfA)
skillsOfA.isSupersetOf(skillsOfB)
skillsOfA.isDisjointWith(skillsOfB)



var emptySet1: Set<Int> = []
var emptySet2 = Set<Double>()

var vowels = Set(["A", "E", "I", "O", "U"])


skillsOfA.count
skillsOfA.isEmpty

let e = skillsOfA.first

skillsOfA.contains("swift")

for skill in skillsOfA{
    print(skill)
}

skillsOfC.insert("swift")
skillsOfC.insert("HTML")
skillsOfC.insert("CSS")

skillsOfC.insert("CSS")
skillsOfC.remove("CSS")
skillsOfC

if let skill = skillsOfC.remove("HTML"){
    print("skill: \(skill) is removed")
}

skillsOfC.removeAll()


