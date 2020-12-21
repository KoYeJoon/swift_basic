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

class Person{
    var firstName : String!
    var lastName : String!
}

extension Person{
    var name : String{
        get{
            return firstName + " " + lastName
        }
    }
    func walk(){
        print("사람 \(name)이(가) 걸어갑니다.")
    }
}

var person1 : Person = Person()
person1.firstName = "김"
person1.lastName = "준수"
print("person1의 이름 : \(person1.name)")
person1.walk()

