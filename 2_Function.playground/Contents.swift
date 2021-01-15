import UIKit

func printName() {
    print("My name is Junsang")
}

printName()

// param 1개
// 숫자를 받아서 10을 곱해서 출력한다

func printMultipleOfTen(value: Int) {
    print("\(value) * 10 = \(value*10)")
}

printMultipleOfTen(value: 5)

//param 2개
//물건 값과 갯수를 받아서 전체 금액을 출력하는 함수

func printTotalPrice(price: Int, count: Int) {
    print("Total Price : \(price * count)")
}

printTotalPrice(price: 1500, count: 5)

//언더바 호출
func printTotalPriceUnderbar(_ price: Int,_ count: Int) {
    print("Total Price : \(price * count)")
}

printTotalPriceUnderbar(1000, 10)

//디폴트 값 설정
func printTotalPriceDefault(price: Int = 1500, count: Int) {
    print("Total Price : \(price * count)")
}

printTotalPriceDefault(count: 8)
printTotalPriceDefault(price: 2000, count: 8)

//반환 값의 타입 설정
func totalPrice(price: Int, count: Int) -> Int {
    let totalPrice = price*count
    return totalPrice
}

print(totalPrice(price: 300, count: 44))

//In Out parameter

var value = 3
func valueIncrement(_ value : inout Int) {
    value += 1
    print(value)
}

valueIncrement(&value)

//Fuction as a param

func add(_ a: Int,_ b: Int)->Int {
    return a+b
}

var function = add
function(2,4)

func printResult(_ function: (Int,Int)->Int,_ a: Int,_ b: Int){
    let result = function(a,b)
    print(result)
}

printResult(add, 10, 5)

