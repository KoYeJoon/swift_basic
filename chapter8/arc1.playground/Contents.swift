/*
 래퍼런스 숫자 : 클래스로부터 만들어진 인스턴스 객체에만 적용된다.
 -->string, struct, enum에는 적용되지 않음
 
클래스로부터 만들어진 객체가 모두 해체되는 경우 deinit이 실행된다.
 */

class Person{
    var name : String!
    var age : Int!
    init(name : String, age : Int){
        self.name = name
        self.age = age
    }
    //Person 클래스로부터 만들어진 인스턴스 객체가 메모리에서 해체되는 경우
    deinit {
        print("\(name!)가 메모리에서 해제되었습니다.")
    }
    
}

var person1 : Person! = Person(name : "소녀시대", age: 20)
person1 = nil

var person2 : Person! = Person(name: "걸스데이", age: 22)
var person3 = person2

//person3이 남아있으므로 deinit이 실행되지 않는다.
person2 = nil

/*
 변수는 변수가 선언된 범위를 벗어나면 자동으로 사라진다. => 변수의 '유효 범위'
 person4는 함수실행되었을 때 만들어지고 사라지므로 deinit가 실행된다.
 */
func createPerson(name : String, age : Int) {
    let person4 : Person! = Person(name : name , age : age)
    print("person4 변수  만들어짐. \(person4.name)")
}

createPerson(name: "티아라", age: 24)

class Team{
    var person : Person!
    init() {
        person = Person(name : "애프터스쿨", age : 23)
    }
    func show() {
        print("Team안의 Person 객체 : \(person.name)")
    }
}

var team1 : Team! = Team()
team1.show()
team1 = nil
