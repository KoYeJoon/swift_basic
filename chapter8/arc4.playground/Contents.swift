/*
 weak Pointer : 강한 참조와는 다르게 객체를 소유하지 않는다.
 --> 래퍼런스 개수를 늘리지 않는다.
 weak var 변수이름 : 자료형
 --> 두 객체가 서로 독립적으로 존재할 수 있는 경우
 unowned var 변수이름 : 자료형
 -->하나의 클래스가 다른 클래스에 완전히 종속되어 있는 경우
 -->weak 키워드를 사용해 선언한 변수 또는 상수에서 가리키던 객체가 해제되면 이 변수 또는 상수에서는 자동으로 nil이 할당된다. --> 옵셔널로 선언해야 한다.
 */

//unowned var을 쓴 경우
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
    //weak var 인 경우 weak var person : Person?
    //unowned var인 경우 ?옵셔널이 아닌 자료형
    unowned var person : Person
    init(person : Person) {
        self.person = person
        print("Team이 만들어졌습니다.")
    }
    deinit {
        print("Team 객체 해제됨.")
    }
}

var person1 : Person! = Person(name: "소녀시대", age: 22)
var team1 : Team! = Team(person: person1)
person1.team = team1

//강한 참조에서 처럼 일일이 해제하지 않아도 되나봄.
//person1.team = nil
//team1.person = nil

person1 = nil
team1 = nil

/*
 person1이 nil된 경우, team1.person에 접근하려고 하면 오류가 발생한다.
 ==> 댕글링 포인터(dangling pointer)
 unowned 를 사용할 때는 변수가 nil이 될 수 없으므로 오류 발생 가능
 */




