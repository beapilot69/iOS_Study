import UIKit

//
//var someFruits = ["딸기", "사과", "딸기", "수박", "복숭아"]
//print("hi")
//print(someFruits.first)
//
//var str: String? = "happy"
//
//str?.uppercased()

var harryPotter = [ //딕셔너리임
    "name" : "해리포터",
    "house" : "그리핀도르"
]

//print(harryPotter["name"])
//print(harryPotter["house"])     //옵셔널 발생
//print(harryPotter["namr"])    // 오타가 있지만 오류가 발생하지 않음


//struct Student { //구조체임
//    var name: String
//    var house: String
//
//    //구조체 쓰는 이유 : 함수를 넣을 수 있다.
//    func printStudent(num: Int) {
//        //print(self.house, self.name)
//        print("\(self.house)에 사는 \(self.name)의 나이는 \(num)살 입니당")
//    }
//}

//var harry = Student(name: "해리포터", house: "그리핀도르")
//harry.printStudent(num : 40)
//print(harry)
//print(harry.name)
//print(harry.namr) //!! 오류로 걸러줌

//harry.printStudent()


/* 클래스 */
class Student {
    var name: String
    var house: String
    
    init(name: String, house: String) {
        self.name = name
        self.house = house
    }
    
    func printStudent(num: Int) {
        print("\(self.house)에 사는 \(self.name)의 나이는 \(num)입니다.")
    }
}



var harry = Student(name: "해리포터", house: "그리핀도르")
harry.printStudent(num: 50)


/* 클래스와 구조체 비교
 -공통점
 1. 둘 다 내부에 함수(func)를 가질 수 있음. 내부변수 사용가능.
 2. 변수명 앞에 self. 붙이는 경우 : 같은 이름의 변수 선언이 여러번 돼있을 때 더 구체적으로 넓은 범위로 선언된 값을 사용할 때 사용
 
 -차이점
 1. struct : 나누면 배가 되고, class : 나눠도 하나임
 -> struct는 복제가 가능하고 class는 복제가 불가능.
 */
