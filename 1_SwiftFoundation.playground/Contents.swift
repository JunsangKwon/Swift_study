import UIKit
import Foundation

// === Tuple

let coor = (4,6)

let x = coor.0

let y = coor.1

let coor2 = (x:1, y:5)

let (x3,y3) = coor2

// === While

var i = 1
while i < 10 {
    if i==5 {
        break
    }
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

//var sum = 0
//for i in range {
//    print(i)
//    sum += i
//}
//print(sum)

for i in range where i%2 == 0 {
    print(i)
}

// sin 함수
var sinValue: CGFloat = 0
for i in range {
    sinValue = sin(CGFloat.pi/4 * CGFloat(i))
}

for _ in range {
    print("hi")
}

//switch문
let food = "pizza"
switch food {
case "ramen":
    print("라면먹자")
case "chicken":
    print("치킨먹자")
case "pizza":
    print("피자먹자")
default:
    print("굶자")
}

//if ~ else 문

let question = 5 > 10
if question {
    // 조건이 만족할 때 수행
    print("하이")
}
else {
    // 조건이 만족하지 않을 때 수행
    print("바이")
}

let number = 10
switch number {
case _ where number%2 == 0:
    print("짝수")
default:
    print("홀수")
}

let tuple = (x: 4, y: 6)

switch tuple {
case (0 , 0):
    print("둘다 0")
case (_, 0):
    print("y는 0")
case (0, _):
    print("x는 0")
case (let x, let y) where x<y:
    print("(\(x),\(y))")
default:
    print("몰라")
}
