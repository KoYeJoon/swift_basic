/*
 NSArray : 값이 변경되지 않는 배열
 NSMutableArray : 값이 변경될 수 있는 배열
 */
import Foundation

let names : NSArray = ["소녀시대", "걸스데이", "티아라"]
NSLog("NSArray배열의 원소 개수 : %d", names.count)

var index = 0
for item in names{
    let name =  item as! String
    NSLog("원소 #%d : %@",index,name)
    index += 1
}

let names2 : NSMutableArray = ["소녀시대","걸스데이","티아라"]
names2.add(2)
names2.insert("애프터스쿨",at:1)
//removeObject : 특정 위치에 있는  원소 삭제
names2.removeObject(at: 2)

NSLog("NSArray 배열의 원소 개수 : %d", names.count)

index = 0
for item in names2{
    if (item is String){
        let  name = item as? String
        print("원소 #\(index) : \(name)")
        }else{
            print("원소 #\(index)가 문자열이 아닙니다. : \(item)")
        }
        index += 1
}

