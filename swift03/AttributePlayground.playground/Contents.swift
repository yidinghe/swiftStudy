//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

struct Point{
    var x = 0.0
    var y = 0.0
}

struct Size {
    var width = 0.0
    var height = 0.0
}

class Rectangle {
    
    var origin = Point()
    var size = Size()
    var center: Point{
        
        //getter
        get{
            let centerX = origin.x + size.width/2
            let centerY = origin.y + size.height/2
            return Point(x: centerX, y: centerY)
        }
        
        //setter
        set{
            origin.x = newValue.x - size.width/2
            origin.y = newValue.y - size.height/2
        }
    }
    
    init( origin: Point , size: Size ){
        self.origin = origin
        self.size = size
    }
    
}

var rect: Rectangle = Rectangle(origin: Point(), size: Size(width: 10, height: 5))
rect.center


// Property Observer
// 注意， didSet和willSet不会在初始化阶段init时候使用

class LightBulb{
    
    static let maxCurrent = 30
    var current = 0 {
        
        willSet{
            print("Current value changed. The change is : \(abs(current-newValue))")
        }
        
        didSet{
            if current > LightBulb.maxCurrent{
                print("too much")
                current = oldValue
            }
            print("current: \(current)")
        }
    }
    
    
}

let bulb = LightBulb()
bulb.current = 20
bulb.current = 30
bulb.current = 40


// lazy property

class ClosedRange{
    let start: Int
    let end: Int
    
    var width: Int{
        return end - start + 1
    }
    
    lazy var sum: Int = {
        var res = 0
        for i in self.start...self.end{
            res += i
        }
        return res
    }()
    
    init?( start:Int , end: Int){
        if start > end {
            return nil
        }
        self.start = start
        self.end = end
    }
    
}

if let range = ClosedRange(start: 0, end: 10_000){
    print(range.width)
    range.sum
}

let gameManagerInstance: GameManager = GameManager.defaultGameManager

gameManagerInstance.addScore()

