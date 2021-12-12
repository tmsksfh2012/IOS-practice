import UIKit

// unicode 범위 관련

// 숫자만 입력받을 수 있어야 한다.

let inputValue = "ㅁ"

"\u{30}" == "0"
"\u{39}"


//if inputValue >= "\u{30}" && inputValue <= "\u{39}" {
//    print("숫자")
//}else {
//    print("숫자가 아니다.")
//}

// 영어만 입력받는 경우
"\u{79}"
"\u{7a}"
"\u{7b}"


// string

let myName = "lee min kim"

//for char in myName {
//    print(char)
//}

let myLongStr =
"""
hi
hello
welcome
"""
//print(myLongStr)

let isOn = false
isOn.description

let myNum = 123
myNum.description

"my number is \(myNum)"

let myFloat = 12.33
String(myFloat).split(separator: ".")

// Array
var myNames = Array<String>()
var myAges = [Int]()

myNames.append("kim")
myNames.append("lee")
myNames.append("jin")

//for (idx, name) in myNames.enumerated() {
//    print(idx, name)
//}
let index = 2

//if myNames.count > index {
//    myNames[index]
//}

//myNames.append(contentsOf: ["hi", "hello"])
myNames += ["hi", "hello"]
myNames += ["bonjour"]

myNames.insert("hahaha", at: 0)

myNames.removeAll()

// Set

var names = Set<String>()
names.insert("kim")
names.insert("min")
names.insert("lee")
names
var sameNames = ["lee", "lee", "kim", "lee"]
Set(sameNames)

var names2 : Set = ["lee", "kim", "min"]

var numbers1: Set = [1, 2, 3, 4, 5]
var numbers2: Set = [4, 5, 6, 7, 8]

// 교집합
numbers1.intersection(numbers2)

// 합집합
numbers1.union(numbers2)

// 대칭 차집합
numbers1.symmetricDifference(numbers2)

// 여집합
numbers1.subtracting(numbers2)

// Dictionary

var namesOfStreet = [String : Any]()

namesOfStreet["302ro"] = "1st Street"
namesOfStreet["303ro"] = "2nd Street"
namesOfStreet["304ro"] = 3

namesOfStreet["305ro"]

namesOfStreet["302ro"] = 1
namesOfStreet["302ro"]
namesOfStreet["302ro"] = nil // Dictionary는 Optional이 아니어도 nil 컨트롤 가능
namesOfStreet["302ro"]

namesOfStreet // nil은 value가 아니라 해당 key를 삭제하는 것이다

var namesOfStreet2 = ["a" : 1, "b" : 2, "c" : 3]

namesOfStreet.keys

for dic in namesOfStreet {
    print(dic)
}
