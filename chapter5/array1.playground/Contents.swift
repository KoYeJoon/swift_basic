class Person{
    var name : String?
    
    init(name:String){
        self.name=name
    }
}

var count=0
let name1 = "소녀시대"
let name2 = "걸스데이"
let name3 = "여자친구"
let name4 = "티아라"
let name5 = "애프터스쿨"

func createPerson() -> Person{
    var person : Person!
    if count == 0 {
        person=Person(name: name1)
    } else if count == 1{
        person = Person(name :name2)
    } else if count==2{
        person=Person(name:name3)
    } else if count==3{
        person = Person(name:name4)
    } else if count==4 {
        person=Person(name : name5)
    }
    count+=1
    return person
}
var person1 : Person
person1=createPerson()
print("만들어진 사람 객체 : \(person1.name!)")

person1=createPerson()
print("만들어진 사람 객체 : \(person1.name!)")

person1=createPerson()
print("만들어진 사람 객체 : \(person1.name!)")
