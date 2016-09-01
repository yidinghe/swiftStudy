//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class Person{
    let firstName: String
    let lastName: String
    var career: String?
    
    init(firstName: String, lastName: String, career: String){
        self.firstName = firstName
        self.lastName = lastName
        self.career = career
    }
    
    init(firstName: String, lastName: String){
        self.firstName = firstName
        self.lastName = lastName
    }
    
    func fullName() -> String {
        
        return self.firstName + " " + self.lastName
    }
    
    
}

let person1 = Person(firstName: "Yiding", lastName: "He", career: "Developer")
let person2 = person1

person1 === person2