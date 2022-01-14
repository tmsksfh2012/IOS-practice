import UIKit

// Function 함수

//계산기 -> Class
// {+ -} -> Function

let a = 10
let b = 20

func plus_tuple(_ A : Int, _ B : Int) -> (String, Int){
    return ("결과값은", A + B)
}

let tmp = plus_tuple(a, b)

func plus(_ num1 : Int, _ num2 : Int) -> Int {
    return num1 + num2
}
func minus(_ num1 : Int, _ num2 : Int) -> Int {
    return num1 - num2
}
func multiply(_ num1 : Int, _ num2 : Int) -> Int {
    return num1 * num2
}


func displayCalc(result: (Int, Int) -> Int) {
    print("연산 결과", result(a, b))
}

var inputButtonType = "+"

if inputButtonType == "+" {
    displayCalc(result: plus)
}
else if inputButtonType == "-" {
    displayCalc(result: minus)
}
else if inputButtonType == "*" {
    displayCalc(result: multiply)
}


// Closure 클로저
// func - 유사
// closure - 이름이 없음
// function
func myScore(a: Int) -> String {
    return "\(a)점"
}
let score = myScore
score(50)

// closure
let myScore2 = { (a: Int) -> String in
    return "\(a)점"
}

myScore2(20)

// 축약
let myScore3 = { (a: Int) -> String in
    "\(a)점"
}

let myScore4 = { (a: Int) in
    "\(a)점"
}

let myScore5 : (Int, Int) -> String = { (a,b) in
    "\(a + b)점"
}

let myScore6 : (Int, Int, Int) -> String = {
    "\($0 + $1 + $2)점"
}

myScore6(20,30,40)


// Closure 실전
// 조건 -> 찾는다 -> 특정한 글자가 포함된 것을 찾는다.
// 조건 -> 찾는다 -> 입력한 글자로 시작하는 첫 글자를 찾는다.

let names = ["apple", "air", "brown", "red", "orange", "blue", "candy", "hobby"]

let containSomeText: (String, String) -> Bool = { name, find in
    if name.contains(find) {
        return true
    }
    return false
}

let isStartSomeText: (String, String) -> Bool = {name, find in
    if name.first?.description == find {
        return true
    }
    return false
}

func find(findString: String, condition: (String, String) -> Bool) -> [String] {
    var newNames = [String]()
    
    for name in names {
        if condition(name, findString) {
            newNames.append(name)
        }
    }
    return newNames
}

find(findString: "a", condition: containSomeText)
find(findString: "a", condition: isStartSomeText)

func someFind(find: String) -> [String] {
    var newNames = [String]()
    
    for name in names {
        if name.contains(find) {
            newNames.append(name)
        }
    }
    return newNames
}

someFind(find: "a")
