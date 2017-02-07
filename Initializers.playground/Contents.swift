//: Playground - noun: a place where people can play

import UIKit
import Foundation

var str = "Hello, playground"

class Animal{
    init(){
        
    }
}

class Human:Animal{
    let personName:String
    let personDOB:Date
    let personAge:Int
    // Designated initializer
    /// Satisfied Rule: Should have a super class initialization. A designated initializer must call a must call a designated initializer from its parent class unless it is super class.
    init(name:String, dateOfBirth:Date, age:Int){
        self.personName=name
        self.personDOB=dateOfBirth
        self.personAge=age
        super.init()
    }
    // Convinience Initializer
    /// Satisfied Rule #1: A convenience initializer must call a designated initializer from the same class
    convenience init(name:String, dateOfBirth:Date){
        let calender = NSCalendar(calendarIdentifier: NSCalendar.Identifier.gregorian)
        let components = calender?.components(NSCalendar.Unit.year, from: dateOfBirth, to: Date(), options: NSCalendar.Options.init(rawValue: 0))
        let age=components?.year
        self.init(name:name, dateOfBirth:dateOfBirth, age:age!)
        
    }
    /// Satisfied Rule #1: A convenience initializer must call a convenience initializer which has called a designated initializer from the same class.
    convenience init(name: String){
        let calender = NSCalendar(calendarIdentifier: NSCalendar.Identifier.gregorian)
        let dateOfBirth = calender?.date(era:2000, year:1985, month: 8, day: 15, hour: 9, minute: 9, second: 9, nanosecond: 9)
        self.init(name:name, dateOfBirth:dateOfBirth!)
    }
}

let calender = NSCalendar(calendarIdentifier: NSCalendar.Identifier.gregorian)
let dateOfBirth = calender?.date(era:2000, year:1986, month: 4, day: 26, hour: 7, minute: 30, second: 9, nanosecond: 9)

let person = Human.init(name: "Kiranpal", dateOfBirth: dateOfBirth!)

print(person.personAge)

let otherPerson = Human.init(name: "Kaushik")

print(otherPerson.personAge, otherPerson.personDOB)


