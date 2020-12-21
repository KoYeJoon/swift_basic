/*
 NSDictionary, NSMutableDictionary
 */
import Foundation

let names : NSMutableDictionary = [1: "소녀시대", 2: "걸스데이", 3: "티아라"]
NSLog("딕셔너리의 원소 개수 : %d", names.count)

//setObject : 키와 값을 설정할 대 사용됨
//removeObject : 키를 이용해 값을 삭제할 때 사용됨
names.setObject("애프터스쿨", forKey: 4 as NSCopying)
names.removeObject(forKey: 1)


var  index=0
for (key,value) in names{
    print("원소 #\(index) -> \(key) : \(value)")
    index += 1
}

//Quiz41
let family : NSMutableDictionary = ["아빠" : "파파", "엄마" : "마마", "동생" : "시스타", "멍뭉이" : "퍼피"]

print("가족  구성원 수 : \(family.count)")

var index1 =  0
for(key,value) in family {
    print("원소 #\(index1) -> \(key) : \(value)")
    
    index1+=1
}
