//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
// Raw Value
enum Month: Int {
    case January = 1
    case February
    case March
    case April
    case May
    case June
    case July
    case August
    case September
    case October
    case November
    case December
}

enum Season {
    case Spring, Summer, Autumn, Winnter
}

let curMonth: Month = .June

func getSeason(month: Month) -> Season {
    switch month {
    case .March, .April, .May:
        return .Spring
    case .June, .July, .August:
        return .Summer
    case .September, .October, .November:
        return .Autumn
    case .December, .January, .February:
        return .Winnter
    }
}

func monthsBeforeNewYear( month: Month) -> Int {
    
    return 12 - month.rawValue
}

let input = 4
let month = Month(rawValue: input)

if let month = Month(rawValue: input){
    monthsBeforeNewYear(month)
}

// associate value
enum ATMStatus{
    case Success(Int)
    case Error(String)
    case Waiting
}

var balance: Int = 1000

func withdraw( amount: Int ) -> ATMStatus {
    if balance >= amount {
        balance -= amount
        return .Success(balance)
    }
    else{
        return .Error("Not enough money")
    }
}

let result = withdraw(100)

switch result{
case let .Success(newBalance):
    print("\(newBalance) left")
case let .Error(errorMessage):
    print("Error: \(errorMessage)")
case .Waiting:
    print("Waiting")
}

enum Shape{
    case Square(side: Double)
    case Rectangle(width: Double, height: Double)
    case Circle(centerx: Double, centery: Double, radius: Double)
    case Point
    
    // enum里可以声明函数
    func area() -> Double {
        switch self {
        case let .Square(side):
            return side*side
        case let .Rectangle(width, height):
            return width*height
        case let .Circle( _ , _ , radius):
            return M_PI*radius*radius
        case  .Point:
            return 0
        }
    }
}

let square = Shape.Square(side: 20)
let rectangle = Shape.Rectangle(width: 40, height: 50)
let circle = Shape.Circle(centerx: 0, centery: 0, radius: 50)
let point = Shape.Point

func area(shape: Shape) -> Double {
    switch shape {
    case let .Square(side):
        return side*side
    case let .Rectangle(width, height):
        return width*height
    case let .Circle( _ , _ , radius):
        return M_PI*radius*radius
    case  .Point:
        return 0
    }
}

area(square)
area(rectangle)
area(circle)
area(point)

square.area()
rectangle.area()
circle.area()
point.area()

//recursive

enum ArithmeticExpression {
    case Number(Int)
    indirect case Addition(ArithmeticExpression, ArithmeticExpression)
    indirect case Multiplication(ArithmeticExpression, ArithmeticExpression)
}

// (5 + 4)* 2

let five = ArithmeticExpression.Number(5)
let four = ArithmeticExpression.Number(4)
let two = ArithmeticExpression.Number(2)

let sum = ArithmeticExpression.Addition(five, four)
let product = ArithmeticExpression.Multiplication(sum, two)

func evaluate(expression: ArithmeticExpression) -> Int {
    switch expression {
    case let .Number(value):
        return value
    case let .Addition(left, right):
        return evaluate(left) + evaluate(right)
    case let .Multiplication(left, right):
        return evaluate(left) * evaluate(right)
    }
}

evaluate(product)



