var names1 : Set<String> = ["소녀시대", "걸스데이","티아라"]
var names2 : Set<String> = ["걸스데이","애프터스쿨"]

names2.insert("애프터스쿨")
print("names2 셋의 원소 개수 : \(names2.count)")

var output = names1.intersection(names2)
print("intersection 결과 : \(output)")

output=names1.union(names2)
print("union 결과 : \(output)")

output = names1.symmetricDifference(names2)
print("symmetricDifference 결과 : \(output)")

output=names1.subtracting(names2)
print("subtracting 결과 : \(output)")

var members : Set<String>=[]
members.insert("아빠")
members.insert("엄마")
members.insert("동생")
members.insert("멍뭉이")

var index = 0
print("가족 구성원의 수 : \(members.count)")
for name in members {
    print("가족 구성원 #" + String(index)+"->"+name)
    index += 1
}
