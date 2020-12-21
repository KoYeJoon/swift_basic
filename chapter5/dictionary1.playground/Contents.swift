var girls : [Int:String] = [1:"소녀시대", 2:"걸스데이", 3 : "티아라"]
print("girls 딕셔너리의 원소 개수 : \(girls.count)")

if(girls[1] != nil){
    print("girls 딕셔너리 키 1의 값 : \(girls[1]!)")
}

girls[1]  = "여자친구"
girls[7] = "에프터스쿨"

for (key, value) in girls {
    print("걸그룹 키와 값 -> \(key) : \(value)")
}

for (key,value) in girls.sorted(by:{$0.0<$1.0}){
    print("걸그룹 키와 값 -> \(key) : \(value)")
}
