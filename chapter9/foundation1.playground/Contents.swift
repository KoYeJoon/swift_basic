/*
 *UI Kit :사용자가 눈으로 볼 수 있는 화면을 구성
                이벤트를 처리할 때 필요한 기능 제공
 *MapKit : 지도를 다룰 때 이용
 *AVFoundation : 멀티미디어
 *파운데이션 프레임워크 : 가장  기본이 되는 것(NSData, NSArray, NSURL)
 
 import Foundation형식으로 명시하면 이용이 가능하다.
 */
import Foundation

class Person : NSObject {
    var name : String
    var age : Int
    init (name : String, age : Int){
        self.name = name
        self.age = age
    }
    //객체를 비교해주는 ===과 비슷한  기능
    //하지만 객체 안 속성 중 어떤 것을 비교할지 지정 가능
    override func  isEqual(_ object: Any?) -> Bool {
        if let other = object as? Person{
            return self.name == other.name && self.age == other.age
        }
        return false
    }
}

let person1 = Person(name: "소녀시대" , age: 22)
let person2 = Person(name: "소녀시대", age: 22)
let person3 = Person(name: "걸스데이", age: 20)

if person1.isEqual(person2){
    print("person1과 person2는 같습니다.")
}

if person1 != person3 {
    print("person1과 person3은 다릅니다.")
}
