//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Hashmap from JAVA

var dict: Dictionary<String, String> = ["swift":"swift"]

var emptyDict1: [String:Int] = [:]
var emptyDict2: Dictionary<Int,String> = [:]
var emptyDict3 = [String:String]()
var emptyDict4 = Dictionary<Int,Int>()

print(dict["swift"])

if let value = dict["swift"]{
    print(value)
}

dict.count

dict.isEmpty

Array(dict.keys)
Array(dict.values)

for key in dict.keys{
    print(key)
}
for (key,value) in dict{
    print("key:\(key),value:\(value)")
}


//增删改查

var user = ["name":"yiding", "password":"1qaz", "age":"18"]

user["name"] = "jingyan"

user.updateValue("2wsx", forKey: "password")

let oldPassword = user.updateValue("2wsx", forKey: "password")

if let oldPassword = oldPassword, newPassword = user["password"] where oldPassword == newPassword{
    print("same password")
}

user.removeValueForKey("age")

if let name = user.removeValueForKey("name"){
    print("user:\(name) remove success")
}

user.removeAll()
