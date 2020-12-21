import Foundation

var message = "안녕하세요!"
//문자열이 차지하는 바이트 길이를 알고 싶은 경우
var length = message.lengthOfBytes(using: String.Encoding.utf8)
print("UTF8 인코딩일 경우 바이트 길이 : \(length)")

//문자열 분리 : split
let fruits = "apple,peach,kiwi"
let fruitsArray = fruits.components(separatedBy: ",")
print("과일 개수 : \(fruitsArray.count)")

var index = 0
for fruit in fruitsArray {
    print("#\(index) : \(fruit)")
}

//문자열 안에 특정 문자의 위치를 알아낸 후에 문자를 잘라내는 경우
//-> 문자열.characters.indexOf(대상글자)
//문자열.index(of:문자열)로 바꼈나..


var index1 = String(message).index(of: "하")!
print("하 글자의 인덱스 : \(index1)")

var range1 = String(message).range(of:"하세요")!
print("하세요 글자의 인덱스 : \(range1.lowerBound), \(range1.upperBound)")

//문자열의 앞과 뒤에 공백을 없애는 방법
var password = "T123456 "
print("trim 전 : [\(password)]")

var trimmed = password.trimmingCharacters(in: NSCharacterSet.whitespaces)
print("trim후 : [\(trimmed)]")

//Quiz 39
var data = "{\"name\":\"소녀시대\",\"age\":20}"
print(data)
//1. substring
let range = data.index(data.startIndex, offsetBy: 1) ..< data.index(data.endIndex, offsetBy: -1)
let msg = data[range]
print("{ }제거 후 : \(msg)")

//2. 콤마로 구분 후
let attributes = String(msg).components(separatedBy: ",")
for attr in attributes {
    print("분리된 속성 -> \(attr)")
}

var colonIndex = attributes[0].index(of:":")!
let range2 = attributes[0].index(colonIndex, offsetBy: 1) ..< attributes[0].endIndex
let name = attributes[0][range2]
print("찾아낸 이름 : \(name)")

