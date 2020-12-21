var phonebook : [[String]] = []

var friends : [String] = ["소녀시대","걸스데이","티아라"]
phonebook.append(friends)

var family : [String] = ["엄마", "아빠","멍뭉이"]
phonebook.append(family)

print("전화번호부의 그룹 개수 : \(phonebook.count)")
for i in 0..<phonebook.count{
    print("\(i)번째 배열의 원소 개수 : \(phonebook[i].count)")
}

for i in 0..<phonebook.count{
    for j in 0..<phonebook[i].count{
        print("\(i),\(j)번째 값 : \(phonebook[i][j])")
    }
}
