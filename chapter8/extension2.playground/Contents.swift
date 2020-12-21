/*
 확장을 이용하면 기존에 작성한 클래스, 구조체, 열거형의 기능을 확장할 수 있다.
 1. 계산속성, 타입계산 속성을 추가 가능
 2. 인스턴스 메소드, 타입 메소드를 추가할 수 있음
 3. 초기화 함수를 추가할 수 있다.
 4. 첨자(subscript)를 설정할 수 있다.
 5, 중첩 타입(Nested Type)을 정의할 수 있다.
 6. 프로토콜을 구현하도록 정의 가능
 
 **extension은 저장속성 추가는 허용하지 않는다.
 extension 자료형 {...}
 */

/*
 extension 키워드 뒤에 클래스 이름을 붙이고 다시 그 뒤에 : 과 프로토콜 이름을 붙이면 그 프로토콜을 구현하도록
 바꿀 수  있다.
 */
/*
class Person{
    var name : String!
}

protocol Runnable {
    func run()
}


extension Person : Runnable{
    func run() {
        print("사람 \(name)이(가) 뛰어갑니다.")
    }
}

var person1 : Person = Person()
person1.name="김준수"
person1.run()
*/
//Quiz 36
class Person{
    var name : String
    var age : Int
    
    init(name : String, age : Int){
        self.name = name
        self.age = age
    }
    
}

class Student : Person {
    func walk(){
        print("학생 \(name)이 걸어갑니다.")
    }
}
extension Student{
    func think() {
        print("사람 \(name)이(가) 생각합니다.")
    }
}

var student1 = Student(name : "김현수", age : 20)
student1.think()
