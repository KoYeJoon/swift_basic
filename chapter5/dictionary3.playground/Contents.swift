var phonebook : [String : [String]] = [:]

var family : [String] = ["엄마","아빠","오빠"]
phonebook["가족"] = family

var friends : [String] = ["소녀시대","걸스데이","티아라"]
phonebook["친구"] = friends

print("전화번호부의 그룹 개수 : \(phonebook.count)")

for(group, names) in phonebook {
    print("전화번호부 그룹 이름 : \(group)")
    print("\(group) 그룹의 이름 들 : \(names)")
}

for(index, elem) in phonebook.enumerated() {
    print("전화번호부 그룹 인덱스 : \(index)")
    print("각 그룹 : \(elem)")
}

let keys=[String](phonebook.keys)
let values=[[String]](phonebook.values)

print("전화번호부 키 배열 : \(keys)")
print("전화번호부 값 배열 : \(values)")

for group in phonebook.keys.sorted().reversed(){
    print("전화번호부 그룹 이름 : \(group)")
}

var Infimembers : [String : String]=[:]
Infimembers["mainVocal"] = "김성규"
Infimembers["mainVvocal"]="남우현"
Infimembers["subVocal"]="김명수"
Infimembers["subVvocal"]="이성종"
Infimembers["vocal"]="이성열"
Infimembers["rap"]="장동우"

print("인피니트 멤버 수 : \(Infimembers.count)")
for(key,value) in Infimembers{
    print("맡은 역할 " + key + "->이름 : " + value)
}

