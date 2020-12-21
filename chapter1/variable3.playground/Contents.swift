var value1 : Int = 10
var message : String = "안녕"

var value2 : String = String(value1)
print(message + value2)

var value3 : String = "20"
var value4 : Int? = Int(value3)
print(value4)
print(value4!)

//Quiz4
var weight : Double = 35.5
var weightStr : String = String(weight)

var weight2 : Double? =  Double(weightStr)
print(weight2!)

let  limit1  =  100
let limit2 : Int
limit2 = 200
print(limit1)
print(limit2)

typealias Feet = Int
var distance : Feet = 3000
print(distance)

//Quiz5
var weight3 : Double = 35.5
let ten : Double = 10.0

var result = weight3 / ten
print(result)

print("사람", " 동물 ", "집")
print("사람", " 동물 ", "집", separator :",", terminator : "\n")
print("사람", " 동물 ", "집",terminator : "")
var title = "즐거운 어린이날"
print("제목 : \(title)")

//Quiz6
var name : String = "소녀시대"
var height : Double = 180
weight = 70.0

print("이름 : \(name),  키 : \(height), 몸무게 : \(weight) ")

//Swift Study 01
var name1 = "가나다"
var name2 = "라마바"
var name3 = "사아자"
var name4 = "차카타"
var name5 = "파하"

print("첫번째 사람 : \(name1)\n두번째 사람 : \(name2)\n세번째 사람 : \(name3)\n네번째 사람 : \(name4)\n다섯번째 사람 : \(name5)\n")

let ageStr1 : String = "20"
let ageStr2 : String = "21"
let ageStr3 : String = "22"
let ageStr4 : String = "23"
let ageStr5 : String = "24"

var age1 : Int? = Int(ageStr1)
var age2 : Int? = Int(ageStr2)
var age3 : Int? = Int(ageStr3)
var age4 : Int? = Int(ageStr4)
var age5 : Int? = Int(ageStr5)

print("나이 : \(age1!), \(age2!), \(age3!),  \(age4!),  \(age5!)")
