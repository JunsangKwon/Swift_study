import UIKit

/*
 { (param) -> return type in
    statement
    ...
 }
*/

var multiplyClosure: (Int, Int) -> Int = {
    a, b in return a*b
}

let result2 = multiplyClosure(3,4)

func operationTwoNum(a: Int, b: Int, operation:(Int, Int)->Int) -> Int {
    let result = operation(a,b)
    return result
}

operationTwoNum(a: 7, b: 6, operation: multiplyClosure)

var addClosure: (Int, Int) -> Int = {
    a, b in return a+b
}

operationTwoNum(a: 4, b: 2, operation: {
    a,b in return a/b
})

operationTwoNum(a: 4, b: 2) {
    a,b in return a/b
}

var count = 0

let incrementer = {
    count += 1
}

func setCount(c: Int) -> Int {
    return c
}

setCount(c: count)


incrementer()
incrementer()
count

