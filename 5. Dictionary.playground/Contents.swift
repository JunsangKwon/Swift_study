import UIKit

//Dictionary
var scoreDic: [String: Int] = ["Jason": 80, "Jay": 95, "Jake": 90]

//var scoreDic: Dictionary<String, Int> = ["Jason": 80, "Jay": 95, "Jake": 90]

scoreDic["Jason"]
if let score = scoreDic["Jason"]{
    print(score)
}

//속성
scoreDic.isEmpty
scoreDic.count

//업데이트, 추가, 삭제
scoreDic["Jay"] = 99
scoreDic["Jack"] = 50
scoreDic["Jack"] = nil
scoreDic

//For Loop
for (name, score) in scoreDic {
    print("\(name), \(score)")
}

for key in scoreDic.keys {
    print(key)
}

// 1. 이름, 직업, 도시에 대해 본인의 딕셔너리 만들기
// 2. 여기서 도시를 부산으로 업데이트 하기
// 3. 딕셔너리를 받아서 이름과 도시 프린트하는 함수 만들기

var myDic: [String: String] = ["name" : "권준상", "job": "Student", "city": "Bundang"]
myDic["city"] = "Busan"
func printNameAndCity (Dic : [String : String]) {
    if let myname = Dic["name"] {
        print(myname)
    }
    if let mycity = Dic["city"] {
        print(mycity)
    }
}

printNameAndCity(Dic : myDic)

//Set

var someSet: Set<Int> = [1,2,3,1]



