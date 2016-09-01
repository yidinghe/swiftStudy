//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var errorCode: Int? = 404

errorCode = 0

errorCode = 405

let imInt = errorCode

print(imInt)


var errorCodeString: String? = "404"
print(errorCodeString)

//unWrap

"The errorCode is " + errorCodeString!

if let unwrappedErrorCode = errorCodeString{
    "The errorCode is " + unwrappedErrorCode
}

var errorMessage: String? = "Not Found"

//unwrap several messages
if let errorCodeString = errorCodeString, errorMessage = errorMessage where errorCodeString == "404"{
   "The errorCode is " + errorCodeString + "The errorMessage is " + errorMessage
}

//optional chain
var uppercaseErrorMessage = errorMessage?.uppercaseString

let message2 = errorMessage == nil ? "No Error" : errorMessage!

let message3 = errorMessage ?? "No Error"
