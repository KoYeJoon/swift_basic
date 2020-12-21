/*
/*
 컬렉션 : 그 안에 들어 있는 객체를 소유하기 때문에 ARC의 래퍼런스 개수에 영향을 미친다.
 */
class Person{
    var name : String!
    var age : Int!
    init(name : String, age : Int) {
        self.name = name
        self.age = age
        print("\(name)이 만들어졌습니다.")
    }
    deinit{
        print("\(name)가 메모리에서 해제되었습니다.")
    }
}

//Person 객체를 담아둘 수 있는 배열 객체를 만든다.
var persons = [Person]()
var person1 :  Person! = Person(name : "소녀시대", age : 22)
persons.append(person1)
print("person1을 배열에 추가했습니다.")

//persons의 배열이 그 안에 들어 있는 Person객체를 소유하므로
//deinit하기 위하여 Person객체를 제거하도록 remove 메소드를 호출한다.

person1 = nil

persons.remove(at:0)
person1 = nil
*/

//Quiz4
class Person{
    var name : String!
    var age : Int!
    init(name : String, age : Int) {
        self.name = name
        self.age = age
        print("\(name)이 만들어졌습니다.")
    }
    deinit{
        print("\(name)가 메모리에서 해제되었습니다.")
    }
}
var person1 : Person? = Person(name: "고예윤", age: 20)
var person2 : Person? = person1
var person3 : Person? = person2

person1 = nil
print("person1에 nil 할당됨.")

person2 = nil
print("person2에 nil 할당됨.")

//여기서 객체가 해제되는 듯

person3 = nil
print("person3에 nil 할당됨.")
