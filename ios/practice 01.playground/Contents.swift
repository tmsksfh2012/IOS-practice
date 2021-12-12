import UIKit

// 변수

var greeting = "Hello, playground"

var score : Int = 0

// 상수
let name = "john"

var isOpen = false

if isOpen {
    
} else {
    
}

var tuple = ("a", "b", "c")

tuple.0
tuple.1

//print(tuple.0)

//http status code
var httpError = (statusCode: 404, description: "Not Found")

httpError.statusCode
httpError.description

// Optionals
var myAge :Int?
var myName : String?

if myAge == nil {
    
}
if myName == nil {
    
}
var a : Int? = 20
var b : Int?

// coalesce
var c = (a ?? 0) + (b ?? 0)

// force unwrap
//var d = a! + b!

if a != nil {
    print(a)
    print(a!)
}

if let hasNumber = a {
    print(hasNumber)
}
if var hasNumber = a {
    hasNumber *= 2
    print(hasNumber)
}

func testFunc1() {
    guard let hasNumber = a else {
        return
    }
    print(hasNumber)
    print("end")
}
func testFunc2() {
    guard var hasNumber = a else {
        return
    }
    print(hasNumber * 2)
    print("end")
}
testFunc1()
testFunc2()

// Basic Operators
// Swift언어 특징
// 타입 엄격
// 강타입
// type safe <-> javascript(타입 유연)
let _a : Double = 20
let _b : Double = 30

let _c = _a / _b

let aa = "hi"
let bb = " hello"
let cc = aa + bb

if _b.truncatingRemainder(dividingBy: 2) == 0 {
    print("짝수")
} else {
    print("홀수")
}
