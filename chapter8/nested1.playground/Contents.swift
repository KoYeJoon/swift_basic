/*
 중첩타입 (Nested Type)은 자료형을 정의할 때 그 안에 또 다른 자료형을 정의할 수 있도록 한다.
 클래스, 구조체, 열거형 등의 내부에서 자료형을 정의할 수 있다.
 public : 모든 곳에서 접근 가능
 internal : 같은 모듈 안에서 접근 가능
 private : 같은 소스 파일에서만 접근 가능
 */
class Rectangle {
    var width : Float!
    var height : Float!
    
    //class안에 struct 정의
    struct Info{
        var name : String!
        var count : Int!
    }
    init(width:Float,height:Float){
        self.width = width
        self.height = height
    }
}

let info = Rectangle.Info(name: "정사각형", count: 0)
print("사각형 정보 : \(info.name), \(info.count)")

//Quiz 37
class Family {
    var name : String?
    var members = [Member]()
    class Member{
        var name : String
        var age : Int
        init(name : String, age : Int){
            self.name = name
            self.age = age
        }
    }
}

var family1 = Family()
family1.name = "우리가족"

/*
var member1 = Family.Member(name: "아빠", age: 55)
family1.members.append(member1)
var member2 = Family.Member(name: "엄마", age: 55)
family1.members.append(member2)
var member3 = Family.Member(name: "동생", age: 20)
family1.members.append(member3)
var member4 = Family.Member(name: "이레", age: 5)
family1.members.append(member4)
print("가족 \(family1.name)의 구성원 수 : \(family1.members.count)")
*/
var members = [Family.Member]()
members.append(Family.Member(name: "아빠", age : 55))
members.append(Family.Member(name: "엄마", age : 55))
members.append(Family.Member(name: "동생", age: 20))
members.append(Family.Member(name: "이레", age: 5))

family1.members=members
print("가족 \(family1.name)의 구성원 수 : \(family1.members.count)")
