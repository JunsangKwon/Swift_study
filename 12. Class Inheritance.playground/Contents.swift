import UIKit

struct Grade {
    var letter: Character
    var points: Double
    var credits: Double
}

class Person {
    var firstName: String
    var lastName: String

    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }

    func printMyName() {
        print("My name is \(firstName) \(lastName)")
    }
}

class Student: Person {
    var grades: [Grade] = []
}

let jay = Person(firstName: "Jay", lastName: "Lee")
let jason = Student(firstName: "Jason", lastName: "Lee")

jay.firstName
jason.firstName

jay.printMyName()
jason.printMyName()

let math = Grade(letter: "B", points: 8.5, credits: 3)
let history = Grade(letter: "A", points: 10, credits: 3)

jason.grades.append(math)
jason.grades.append(history)

jason.grades.count


// 학생인데 운동선수
class StudentAthelete: Student {
    var minimumTrainingTime: Int = 2
    var trainedTime: Int = 0
    
    func train() {
        trainedTime += 1
    }
}

//운동선수인데 축구선수
class FootballPlayer: StudentAthelete {
    var footballTeam = "FC swift"
    
    override func train() {
        trainedTime += 2
    }
}

var athelete1 = StudentAthelete(firstName: "Yuna", lastName: "Kim")
var athelete2 = FootballPlayer(firstName: "Heung", lastName: "Son")

athelete1.firstName
athelete2.firstName

athelete2.grades.append(math)

athelete1.minimumTrainingTime
athelete2.minimumTrainingTime

//athelete1.footballTeam
athelete2.footballTeam

athelete1.train()
athelete2.train()

athelete1.trainedTime
athelete2.trainedTime

athelete1 = athelete2 as StudentAthelete // Upper Cast
athelete1.train() // override 한 함수가 실행됨
athelete1.trainedTime
// athelete1.footballTeam -> FootballPlayer 속성에 접근은 안됨;;

if let son = athelete1 as? FootballPlayer {
    son.train()
    son.trainedTime
    son.footballTeam
}
