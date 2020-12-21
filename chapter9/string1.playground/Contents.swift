//변수에 문자열을 넣거나 변수 안에 들어 있는 문자열에서 필요한 글자만 빼내어 다른 변수에 할당하는 방법
var message  : String = "안녕하세요!"
var length = message.count
print("길이 : \(length)")

var name : String = ""
if name.isEmpty {
    print("이름이 없습니다.")
}

//문자열.startIndex 첫번째 문자의 위치
//문자열.endIndex 마지막 문자 뒤의 위치

var first = message[message.startIndex]
var last = message[message.index(before: message.endIndex)]
print("첫 번째 : \(first), 마지막 : \(last)")

// has Prefix 문자열이 어떤 글자로 시작하는지
//hasSuffix : 어떤 글자로  끝나는지

if message.hasPrefix("안녕"){
    print("안녕으로 시작합니다.")
}
if message.hasSuffix("!"){
    print("!로 끝납니다.")
}

/*
 문자열 [Index 범위] : 범위에 해당하는 문자열만 잘라내어 반환
 */

//message startIndex로부터 시작해서 1이므로 두번째 문자
//message.endIndex로부터 -2이므로 마지막에서 두번째 문자  위치
let range = message.index(message.startIndex, offsetBy: 1) ...
message.index(message.endIndex,offsetBy: -2)
let messagePart = message[range]
print("인덱스 1~(끝-2) : \(messagePart)")

let range2 = message.index(message.startIndex, offsetBy: 2) ..< message.endIndex
let messagePart2 = message[range2]
print("인덱스 2~끝 : \(messagePart2)")

//문자열.removeSubrange[index 범위[ 인덱스 범위를 사용하여 문자 삭제
message.removeSubrange(range2)
print("인덱스2 ~ 끝 삭제 후 : \(message)")

//문자열.lowercased 소문자로 변환된 문자열 참조
//문자열.uppercased 대문자로 변환된 문자열 참조

var id = "TestUser01"
print("LowerCase :  \(id.lowercased())")
print("UpperCase : \( id.uppercased())")
