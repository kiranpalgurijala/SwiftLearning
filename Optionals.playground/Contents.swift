//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


var newVar = 12345


var myName:String = "Kiran"

var myNickName:String? = "Kiru"


var newName = myName + myNickName! //(Implicit/Force Unwrapping)


if let myPetName = myNickName{   //(Unimplicit/Safe unwrapping)
    var newName = myName + myPetName
    print(newName)
}



