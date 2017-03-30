//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
str = "Hello, Swift"
let constStr = str
//constStr = "Hello, world"

var nextYear: Int
var bodyTemp: Float
var hasPet: Bool

var arrayOfInts: [Int]

var dictionaryOfCapitalByCountry: [String: String]

let number = 42
let fmStation = 91.1

let emptyString = String()
let emptyArrayOfInts = [Int]()
let emptySetOfFloats = Set<Float>()

let defaultNumber = Int()
let defaultBool = Bool()

let meaningOfLife = String(number)
let availableRooms = Set([205, 411, 412])

let defaultFloat = Float()
let floatFromLiteral = Float(3.14)

let easyPi = 3.14
let floatFromDouble = Float(easyPi)
let floatingPi: Float = 3.14

var countingUp = ["one", "two"]
let secondElement = countingUp[1]
countingUp.count
countingUp.append("three")

var reading1: Float
var reading2: Float
var reading3: Float

reading1 = 9.8
reading2 = 9.2
reading3 = 9.7
//let avgReading = (reading1 + reading2 + reading3) / 3

/*
if let r1 = reading1,
    let r2 = reading2,
    let r3 = reading3 {
        let avgReading = (r1 + r2 + r3) / 3
} else {
    let errorString = "Instrument reported a reading that was nil."
}
 */

let nameByParkingSpace = [13: "Alice", 27: "Bob"]
//let space13Assignee: String? = nameByParkingSpace[13]
let space42Assignee: String? = nameByParkingSpace[42]

if let space13Assignee = nameByParkingSpace[13] {
    print("Key 13 is assigned in the dictionary!")
}

let range = 0..<countingUp.count
for i in range {
    let string = countingUp[i]
}
for string in range {
    print(string)
}
for(i, string) in countingUp.enumerated() {
    print(i, string)
}
for(space, name) in nameByParkingSpace {
    print("Space \(space): \(name)")
}

enum PieType {
    case apple
    case cherry
    case pecan
}

let favouritePie = PieType.apple


let name: String
switch favouritePie {
case .apple:
    name = "Apple"
case .cherry:
    name = "Cherry"
case .pecan:
    name = "Pecan"
}


