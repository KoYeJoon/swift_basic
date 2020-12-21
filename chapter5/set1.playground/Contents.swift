/* set은 중복을 허락하지 않음을 알 수 있음.
 var s2 = Set("Hello")
print("\(s2)")
*/

var names : Set<String> = ["소녀시대","걸스데이","티아라"]
print("셋 안의 이름 개수 : \(names.count)")

if names.contains("걸스데이"){
    print("걸스데이 원소가 있음.")
    names.remove("걸스데이")
    print("삭제 후 이름 개수 : \(names.count)")
}

names.insert("애프터스쿨")
var index = 0
for name in names {
    print("원소 #\(index) -> \(name)")
    index += 1
}
