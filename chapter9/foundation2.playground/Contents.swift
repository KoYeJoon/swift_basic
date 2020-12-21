/*
 셀렉터 : 함수를 식별하기 위해 만드는 정보
            ios용 앱을 만들 때 이벤트를 전달할 타깃을 지정하거나 아림 또는 타이머 등에 이용
 1. selector 구조체 이용
 2. #selector(메소드 이름(파라미터 이름1 : 파라미터 이름 2 : 파라미터 이름 n:)))
 */

//셀렉터를 어떻게 만드는지
import Foundation

func show() {
    print("show 호출됨.")
}

let method = Selector(("show"))
//#selector(show)

//파라미터가 한개인 경우
func show2(data: String){
    print("show2 호출됨 : \(data)")
}
let method2 = Selector(("show2:"))
//#selector(show2(data:))

//파라미터가 하나 이상인 경우 콜론 뒤에 두번째부터 파라미터의 이름 붙여줌
//외부 파라미터 이름 이용, 없다면 내부파라미터 이름 이용
func show3(data : String, name : String){
    print("show3 호출됨 : \(data), \(name)")
}

let method3 = Selector(("show3:name:"))
//#selector(show3(data:name:))


/*
 셀럭터는 메소드를 호출하기 전에 메소드 호출이 가능한지 검사할 때 사용될 수도 있다.
 func responds(to : Selector)->Bool
 */
class Person : NSObject {
    var name : String
    var age : Int
    //@objc : Objective-c에서 호출할 수 있는 함수
    @objc init(name : String, age : Int){
        self.name = name
        self.age = age
    }
    @objc func greeting (message: String){
        print("\(name)에게 인사 : \(message)")
    }
}


//responds메소드를 호출하면 함수를 사용할 수 있는지 없는지 확인 가능

let selector1 = #selector(Person.greeting(message : ))

let person1 = Person(name : "소녀시대", age : 22)
person1.responds(to : selector1)
person1.responds(to : #selector(Person.greeting(message:)))

person1.responds(to : #selector(Person.init(name:age:)))

//Quiz38
class Dog : NSObject {
    var name : String
    var age : Int
    @objc init(name : String, age : Int){
        self.name = name
        self.age = age
    }
   @objc func walk(){
        print("강아지 \(name)가(이) 걸어갑니다. ")
    }
}

func checkDog(dog : Dog) -> Bool {
    if(dog.responds(to: #selector(Dog.walk))){
        return true
    } else{
        return false
    }
}

var dog1:Dog = Dog(name : "이레", age : 5)
print("강아지 객체에 walk 메소드가 있나요? : \(checkDog(dog:dog1))")
