import UIKit

var carName: String?

carName = nil
carName = "Porsche"

var actorName: String? = "손예진"
let num = Int("10")

// 고급 기능 4가지

// 1. Forced unwrapping -> 억지로 박스를 까보기
print(carName!)

// 2. Optional binding (if let) -> 부드럽게 박스를 까보기 1
if let unwrappedCarName = carName {
    print(unwrappedCarName)
} else {
    print("이름 없음")
}

// 3. Optional binding (guard) -> 부드럽게 박스를 까보기 2
func printParseInt( from: String) {
    guard let parseInt = Int(from) else {
        print("Int로 컨버팅 안된다 새꺄.")
        return
    }
    print(parseInt)
}

// 4. Nil coalescing -> 박스를 까봤더니, 값이 없으면 디폴트 값을 줘보자

carName = nil
let myCarName: String = carName ?? "모델 S"
print(myCarName)

// 도전 과제
// 1. 최애 음식이름을 담는 변수를 작성하시고 (String?)
// 2. 옵셔널 바인딩을 이용해서 값을 확인해보기
// 3. 닉네임을 받아서 출력하는 함수 만들기, 조건 입력 파라미터는 String?

let favoriteFood : String? = "삼겹살"

if let myFavoriteFood = favoriteFood {
    print(myFavoriteFood)
} else {
    print("난 다 싫어")
}

func printNickName(nickname: String?) {
    guard let myNickName = nickname else {
        print("I don't have my nickname")
        return
    }
    print(myNickName)
}

printNickName(nickname: "Smile")


