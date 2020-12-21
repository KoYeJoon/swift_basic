enum Gender {
    case Female
    case Male
}

class Person{
    var name : String!
    var gender : Gender!
    
    init(){
        
    }
    init(name : String, gender : Gender) {
        self.name  = name
        self.gender = gender
    }
    
    func getGender() -> Gender{
        return self.gender
    }
}

var person1 : Person = Person(name : "소녀시대" , gender : Gender.Female)

if person1.gender == .Female {
    print("여자입니다.")
} else if person1.gender == .Male{
    print("남자입니다.")
}
