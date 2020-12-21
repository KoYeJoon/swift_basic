/*
 강한 순환 참조 : 두 클래스가 서로 참조하는 경우
 --> ARC에 의해 해제되지 않기 때문에 프로그래밍 종료될 때까지 계속 유지됨.
 */
class Person{
    var name : String!
    var age  : Int!
    var team : Team!
    init(name : String, age : Int){
        self.name = name
        self.age = age
        print("\(name)이 만들어졌습니다.")
    }
    deinit{
        print("\(name)이 메모리에서 해제되었습니다.")
    }
}

class Team{
    var person : Person!
    init(person : Person) {
        self.person = person
        print("Team이 만들어졌습니다.")
    }
    deinit {
        print("Team 객체 해제됨.")
    }
}
/*
//상호참조 : person1 과 team1에 nil을 할당해도 객체는 해제되지 않는다.
var person1 : Person! = Person(name: "소녀시대", age: 22)
var team1 : Team! = Team(person: person1)
person1.team = team1

person1 = nil
team1 = nil
*/

var person1 : Person! = Person(name: "소녀시대", age: 22)
var team1 : Team! = Team(person: person1)
person1.team = team1

//이것을 해체하려면 속성에 직접 nil을 할당해야 한다.
person1.team = nil
team1.person = nil

person1 = nil
team1 = nil


