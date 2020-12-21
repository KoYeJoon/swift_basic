class Person{
    var name : String?
    var age : Int = 0
    init(name:String,age : Int){
        self.name=name
        self.age = age
    }
}

var count=0
let names = ["소녀시대","걸스데이","여자친구","티아라","애프터스쿨"]
let ages = Array<Int>([20,23,22,20,21])

func createPerson() -> Person{
    var person : Person!
    person = Person(name: names[count], age: ages[count]);
    
    count += 1
    return person
}

var person1 : Person
person1 = createPerson()
print("만들어진 사람 객체 : \(person1.name!)")

person1 = createPerson()
print("만들어진 사람 객체 : \(person1.name!)")

person1 = createPerson()
print("만들어진 사람 객체 : \(person1.name!)")



var familys = ["엄마", "아빠", "동생", "멍뭉이"]

let index = 1
print("두 번째 가족은 ? \n \(familys[index])")
