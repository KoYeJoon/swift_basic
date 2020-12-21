/*
 어떤 인스턴스 객체가 어떤 클래스로부터 만들어진 것인지 알고 싶은 경우
 인스턴스 객체 is 객체 자료형
 */
class Person{
    var name : String
    var age : Int
    init (name : String, age : Int){
        self.name = name
        self.age = age
    }
}

class Baby : Person {
    func cry(){
        print("아기가 웁니다.")
    }
}

var person1 = Person(name: "소녀시대", age: 20)
var baby1 = Baby(name: "걸스데이", age: 22)
/*
 Baby class는 person 을 상속받았기 때문에 baby1이 가르키는 객체는
 baby 자료형이기도 하고 person 자료형이기도 하다.
 */
if baby1 is Baby{
    print("baby1의 자료형은 Baby가 맞습니다.")
}
if baby1 is Person{
    print("baby1의 자료형은 Person이 맞습니다.")
}

var person2 : Person = Baby(name: "티아라", age: 22)

/*
 as -> 업 캐스팅에 사용된다.
    인스턴스 객체 as 변환할 자료형
 as? -> 다운캐스팅 중에 옵셔널 자료형으로 변환할 때 사용된다.
    인스턴스 객체 as? 변환할 자료형
 as! -> 다운캐스팅 중에서 강제로 일반 자료형으로 변환할 때 사용된다.
 */
let baby2 = person2 as? Baby
if baby2 != nil{
    print("person2  변수의 자료형이 Baby로 변환되었습니다.")
}

if let baby3 = person2  as? Baby {
    print("\(baby3.name)은 Baby자료형으로 형 변환 되었습니다.")
}

let baby4 = person2 as! Baby
print("\(baby4.name)은 Baby 자료형으로 형 변환 되었습니다.")

/*
 Any : 어떤 자료형에나 들어갈 수 있는 범용 자료형
 AnyObject : 클래스들이 상속 받는 가장 상위 클래스
 */

var person3 : Any = Person(name: "애프터스쿨", age: 24)
var baby5 : AnyObject = Baby(name: "여자친구", age: 23)
let person4  = person3  as? Person
let baby6 = baby5 as? Baby

if person4 != nil {
    print("Any에서 Person으로 형 변환되었습니다.")
}

if baby6 != nil {
    print("AnyObject에서 Baby로 형 변환되었습니다.")
}

// AnyObject 자료형으로 배열을 만든 경우
// Any 자료형으로 딕셔너리를 만든 경우

var array1 = [AnyObject]()
array1.append(person1)
array1.append(baby1)
print("array1 의 크기 : \(array1.count)")

var dict1  = [String : Any]()
dict1["1"] = person1
dict1["2"] = baby1
dict1["3"] = 10
print("dict1의 크기 : \(dict1.count)")
