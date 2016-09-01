//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// value type 赋值即是copy Array, Dictionary, Set, String 也都是Value Type
struct Location {
    
    let latitude: Double
    let longitude: Double
    
    init?(coordinateString: String){
        
        guard
        let commaIndex = coordinateString.rangeOfString(",")?.startIndex,
        let firstElement = Double(coordinateString.substringToIndex(commaIndex)),
        let secondElement = Double(coordinateString.substringFromIndex(commaIndex.successor()))
            else{
                return nil
        }
        self.latitude = firstElement
        self.longitude = secondElement
    }
    
    init(latitude: Double, longitude: Double){
        self.latitude = latitude
        self.longitude = longitude
    }
    
    func isNorth() -> Bool {
        return self.latitude > 0
    }
}

let appleHQLocation: Location = Location(latitude: 33.3230, longitude: -122.0322)

appleHQLocation.latitude
appleHQLocation.longitude


