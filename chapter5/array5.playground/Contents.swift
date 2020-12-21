func checkName(names : [String]) {
    if names.first == "소녀시대"{
        print("Error.")
    }
    else{
        print("OK. ")
    }
}

let names = ["소녀시대","걸스데이","티아라"]
checkName(names : names)

var names2 : [String] = ["소녀시대","걸스데이","티아라"]
var names3 = names2
names2.append("에이핑크")
print(names2)
print(names3)

if names2 != names3 {
    print("두 개의 배열이 다릅니다.")
}

var familys = ["아빠","엄마","동생","멍뭉이"]
print("가족 구성원 수는 ? \(familys.count)")
familys.append("오빠")
print("가족 구성원 수는 ? \(familys.count)")

var last = familys.popLast()
print("빼낸 마지막 가족 구성원은 ? \(last!)")
print("가족 구성원 수는 ? \(familys.count)")
