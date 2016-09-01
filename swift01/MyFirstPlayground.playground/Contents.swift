//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let a = 100
let b = 200

a+b

print(a+b)

let website: String = "www.imooc.com"

var d , e , c: Double

d = 100


//整型

var imInt: Int = 80

Int.max

Int.min

// 无符号整型

var imUInt: UInt = 80

UInt.max

UInt.min

let decimalInt: Int = 17

let binaryInt: Int = 0b10001

let octalInt: Int = 0o21

let hexInt: Int = 0x11

let bigNum = 100_000_000

//浮点数

let imFloat: Float = 3.1415926

let imDouble: Double = 3.1415926

//类型强转

let x: UInt16 = 200
let y: UInt8 = 10

let m = UInt8(x) + y

//CGFloat

let red: CGFloat = 0.2
let green: CGFloat = 0.5
let blue: CGFloat = 0.3

UIColor(red: red, green: green, blue: blue, alpha: 1.0)

let imTrue: Bool = true
let imFalse: Bool = false

if imTrue{
    print("true")
}
else if 3 + 4 == 7{
    print("3 + 4 == 7")
}
else{
    print("false")
}


//Tuple

var point = (2, 3)
var httpResponse = (404, "NOT FOUND")

let (firInt, secInt) = point

firInt
secInt

let point3 = (x:3, y:2)
point3.x
point3.y

let point4: (x:Int, y:Int) = (3, 2)

let loginResult = (true, "yiding")

let (isLoginSuccess, _ ) = loginResult
isLoginSuccess

// function

print(loginResult, point4, separator: ",", terminator: ":")

let point5 = (x: 3, y: 4, z: 5)
print("\(point5.x)*\(point5.y)=\(point5.x*point5.y)")


//区间运算符

for index in 1...10{
    index
}




for index in 0..<10{
    index
    
}

let courses = ["1","2","3"]

for i in 0..<courses.count{
    print(courses[i])
}

for _ in 1...10{
    2*3
}

for var i = -99; i<=99; i = i + 1 {
    2*3
}





