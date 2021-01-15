import UIKit

var evenNums: [Int] = [2,4,6,8]
//let evenNums2: Array<int> = [2,4,6,8]

// Array의 속성들
evenNums.append(10)
evenNums += [12,14,16]
evenNums.append(contentsOf: [18,20])

print(evenNums.isEmpty) // 비었는지 아닌지 확인
print(evenNums.count) // 배열의 요소 개수

if let firstValue = evenNums.first { // 배열의 첫값
    print(firstValue)
}

evenNums.min() //배열 요소의 최소값
evenNums.max() //배열 요소의 최대값

let firstThree = evenNums[0...2] //여러 값을 복사

evenNums.contains(2) //2를 갖고있는지 확인
evenNums.contains(3)

evenNums.insert(0, at:0) // index 0 에 0을 삽입
// evenNums.removeAll()
// evenNums = []

evenNums.remove(at: 0) // index 0의 값을 삭제

evenNums[0...2] = [-2, 0, 2] // 여러 값을 갱신
evenNums.swapAt(0, 1) // index 0의 값과 index 1의 값을 서로 바꿈

//for num in evenNums {
//    print(num)
//}

for (index, num) in evenNums.enumerated() {
    print("idx: \(index), num: \(num)")
}

evenNums.dropFirst(3)
evenNums.dropLast(2)
evenNums.prefix(3)
evenNums.suffix(3)





