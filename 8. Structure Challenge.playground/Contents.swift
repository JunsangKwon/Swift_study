import UIKit

// 도전과제
// 1. 강의 이름, 강사 이름, 학생 수를 가지는 Struct 만들기 (Lecture)
// 2. 강의 어레이와 강사이름을 받아서, 해당 강사의 강의 이름을 출력하는 함수 만들기
// 3. 강의 3개 만들기 강사 이름으로 강의 찾기

// CustomStringConvertible

struct Lecture: CustomStringConvertible {
    var description: String {
        return "title: \(lectureName), Instructor: \(teacherName)"
    }
    let lectureName: String
    let teacherName: String
    let studentNum: Int
}

let lecture1 = Lecture(lectureName: "iOS", teacherName: "Lee", studentNum: 50)
let lecture2 = Lecture(lectureName: "Algorithm", teacherName: "Choi", studentNum: 200)
let lecture3 = Lecture(lectureName: "React", teacherName: "Eliee", studentNum: 100)

let lectures = [lecture1, lecture2, lecture3]

func printLectureName(lecture: [Lecture], teacherName: String) {
//    for lec in lecture {
//        if lec.teacherName == teacherName {
//            print("강의 이름 : \(lec.lectureName)")
//        }
//    }
    
    let name = lecture.first{(lec) -> Bool
        in return lec.teacherName == teacherName}?.lectureName ?? ""
    
    print(name)
}

printLectureName(lecture: lectures, teacherName: "Lee")
print(lecture1)
