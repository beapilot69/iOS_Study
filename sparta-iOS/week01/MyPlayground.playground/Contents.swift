import UIKit
//변수 선언
// var ~ 무조건 var 로 시작하는 것 같음

/*
//리스트 : 줄줄이사탕!
var sampleList: [Int] = []

sampleList.append(0)
sampleList.append(5)
sampleList.append(10)
print(sampleList)

sampleList[0]
sampleList[1]

var size = sampleList.count // .count 를 사용!

print(size)

//딕셔너리 : 키-값이 쌍을 이루고 있는 형태!
var sampleDict: [String: String] = [:]
sampleDict["name"] = "Harry Potter"
sampleDict["house"] = "Gryffindor"
                    // 1쌍밖에 저장을 못하나? ;;;
print(sampleDict)
    
//여러가지 함수 사용
var str = "spartacodingclub"
str.uppercased() //대문자로 변환!

var num = 10
print(num % 3)

//함수 선언해보기
func sum(num1: Int, num2: Int) -> Int {     //결과값을 보내는 것
    return num1 + num2
}

func sum2(num1: Int, num2: Int) {       //결과값을 안 보내는 것
    print(num1 + num2)
}
print(sum(num1:3, num2:5))
*/

// 출생년도와 계산하고 싶은 연도를 입력받아 나이를 계산해 돌려주는(return) 함수 만들기
/*func calculateAge(calYear:Int, birthYear:Int) -> Int {
    return calYear - birthYear
}

calculateAge(calYear: 2021, birthYear: 1993)
calculateAge(calYear: 2021, birthYear: 1997) */


// 실습 예제 2개
func isEven(num1:Int)->Bool {
    return (num1 % 2 == 0)
}

isEven(num1: 10)

func calculateAgeRange(calYear: Int, birthYear: Int) -> String{
    var a =  ((calYear-birthYear)/10) * 10
    return "\(a)대"
}

calculateAgeRange(calYear: 2021, birthYear: 1997)

//끝
