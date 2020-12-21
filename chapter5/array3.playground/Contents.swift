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

func createPerson() -> Person?{
    var person : Person?
    if count < names.count {
        person = Person(name:names[count], age : ages[count])
    }else{
        print("인덱스 \(count)에 대한 사람 이름이  없습니다.")
    }
    count += 1
    return person
}

var person1 : Person?
person1 = createPerson()
print("만들어진 사람 객체 : \(person1!.name!)")

person1 = createPerson()
print("만들어진 사람 객체 : \(person1!.name!)")

person1 = createPerson()
print("만들어진 사람 객체 : \(person1!.name!)")

person1 = createPerson()
person1 = createPerson()
person1 = createPerson()
