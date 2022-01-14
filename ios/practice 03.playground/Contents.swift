import UIKit

// Control Flow (흐름 제어)

// for

let name = "1234567890"

for char in name {
    // Char --> Int 불가능
//    print(Int(String(char)) * 10)
    print ( (Int(String(char)) ?? 0) * 10 )
}

let names = ["lee", "kim", "min"]

for name in names {
    print(name + "님")
}

let numberOfLegs = ["ant" : 6, "dog" : 4]

for dic in numberOfLegs {
    print(dic.value)
}

for index in 0..<names.count {
    print(index)
}

// while
// 무한루프 -> 멈춰버림. 그러므로 조심하자

var a = 0
while a < 10 {
    a += 1
    print("실행")
}

// switch

let b = "c"
switch b {
case "a", "b", "c":
    print("a or b or c")
case "d":
    print("d")
default:
    print("other")
}

let d = 4
switch d {
case 1:
    print("num 1")
case 2...5:
    print("num 2~5")
default:
    print("other")
}
