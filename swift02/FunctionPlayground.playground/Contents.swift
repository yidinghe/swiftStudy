//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func sayHelloTo(name: String?) -> String {
    return "Hello " + (name ?? "Guest")
}

var nickName: String? = nil
sayHelloTo(nickName)

nickName = "yiding"

sayHelloTo(nickName)

func findMaxAndMin(numbers: [Int]) -> (max: Int , min: Int )? {
    
    guard numbers.count > 0 else{
        return nil
    }
    
    var minValue = numbers[0]
    var maxValue = numbers[0]
    
    for number in numbers{
        minValue = minValue < number ? minValue : number
        maxValue = maxValue > number ? maxValue : number
    }
    
    return (maxValue , minValue )
}

var scores: [Int]? = [1, 2, 3, 4, 5]
scores = scores ?? []

if let result = findMaxAndMin(scores!){
    print("max is:\(result.max)")
    print("min is:\(result.min)")
}

func sayHelloTo(name: String, withGreetingWord greeting: String) -> String {
    return "\(greeting), \(name)"
}

sayHelloTo("Yiding", withGreetingWord: "Hi")

func mutiply(num1: Int, _ num2: Int) -> Int {
    return num1 * num2
}

mutiply(5, 4)

//inout

func swapTwoInts( inout a: Int, inout _ b: Int) {
    (a, b) = (b, a)
}

var x: Int = 2
var y: Int = 3
swapTwoInts(&x, &y)
print(x)
print(y)
swap(&x, &y)

func initArray( inout arr: Array<Int>, by value: Int){
    for i in 0..<arr.count{
        arr[i] = value
    }
}

var arr = [1, 2, 3, 4, 5]

initArray(&arr, by: 10)

arr

// function obj

var array: [Int] = []

for _ in 0..<100{
    array.append(random()%1000)
}

func biggerNumberFirst( a: Int , _ b: Int ) -> Bool {
    return a > b
}

func cmpByNumberString( a: Int, _ b: Int ) -> Bool {
    return String(a) < String(b)
}

func near500( a: Int, _ b: Int ) -> Bool {
    return abs(a-500) < abs(b-500) ? true : false
}

array.sort(biggerNumberFirst)
array.sort(cmpByNumberString)
array.sort(near500)

//高级函数

func changeScores( inout scores: [Int], by changeScore: (Int)->Int) {
    for (index, score) in scores.enumerate(){
        scores[index] = changeScore(score)
    }
}

func changeScore1( score: Int) -> Int {
    return Int(sqrt(Double(score))*10)
}

func changeScore2( score: Int) -> Int {
    return Int(Double(score) / 150.0*100.0)
}

var score1 = [35, 67, 89, 79, 99]
changeScores(&score1, by: changeScore1)

var score2 = [88, 101, 120, 131, 150]
changeScores(&score2, by: changeScore2)


//map func
score1.map(changeScore1)

func isPassOrFail( score: Int) -> String{
    return score < 60 ? "Fail" : "Pass"
}

score1.map(isPassOrFail)

//Filter func

func fail( score: Int) -> Bool {
    return score < 60
}

score1.filter(fail)

//reduce

scores?.reduce(0, combine: +)

//函数的嵌套

func tie1MailFeeByWeight( weight: Int) -> Int {
    return 1*weight
}

func tie2MailFeeByWeight( weight: Int) -> Int {
    return 3*weight
}

func  feeByUnit( price: Int , weight: Int ) -> Int {
    
    func chooseMailFeeCalculationByWeight( weight: Int) -> (Int) -> Int{
        return weight <= 10 ? tie1MailFeeByWeight : tie2MailFeeByWeight
    }
    
    let mailFeeByWeight = chooseMailFeeCalculationByWeight(weight)
    
    return mailFeeByWeight(weight) + price * weight
}

let price = 10
let weight = 100

feeByUnit(price, weight:weight)



