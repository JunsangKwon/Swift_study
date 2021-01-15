import UIKit
import Foundation

// === Tuple

let coor = (4,6)

let x = coor.0

let y = coor.1

let coor2 = (x:1, y:5)

let (x3,y3) = coor2

// === While

var i = 10
while i < 10 {
    print(i)
    i += 1
}

// === Repeat

var j = 10
repeat {
    print(j)
    j += 1
} while j < 10

// === For Loop

let range = 0...10
var sum = 0

for i in range {
    print(i)
    sum += i
}
print(sum)

// sin 함수
var sinValue: CGFloat = 0
for i in range {
    sinValue = sin(CGFloat.pi/4 * CGFloat(i))
}

for _ in range {
    print("hi")
}

//switch문
let value = "bird"
switch value {
case "dog":
    print(0)
case "bird":
    print(3)
default:
    print(2)
}

