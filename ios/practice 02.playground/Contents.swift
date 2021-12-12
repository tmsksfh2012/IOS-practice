import UIKit

// unicode 범위 관련

// 숫자만 입력받을 수 있어야 한다.

let inputValue = "ㅁ"

"\u{30}" == "0"
"\u{39}"


if inputValue >= "\u{30}" && inputValue <= "\u{39}" {
    print("숫자")
}else {
    print("숫자가 아니다.")
}

// 영어만 입력받는 경우
"\u{79}"
"\u{7a}"
"\u{7b}"


// string

let myName = "lee min kim"

for char in myName {
    print(char)
}

let myLongStr =
"""
hi
hello
welcome
"""
print(myLongStr)

let isOn = false
isOn.description

