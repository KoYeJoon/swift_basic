class Person{
    var name : String?
    var age : Int = 0
    init(name:String,age : Int){
        self.name=name
        self.age = age
    }
}
/*
var count=0
let names = ["소녀시대","걸스데이","여자친구","티아라","애프터스쿨"]
var ages = Array<Int>([20,23,22,20,21])

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

var persons : Array<Person > = Array<Person>()
//for i in 0..<names.count
for i in 0..<5{
    print("인덱스 \(i)의 사람 이름 : \(names[i])")
    let person = createPerson()!
    persons.append(person)
    print("만들어진 사람 객체 : \(person.name!)")
}
*/
/*
ages += [32,33]
for i in 0..<ages.count{
    print("\(ages[i])\n")
}
 기존의 ages에 [32,33]이 뒤따라 나오게 된다.
*/

var names2 = ["소녀시대", "걸스데이","여자친구","티아라","애프터스쿨"]
let age2 = Array<Int>([20, 23,22,20,21])
var persons : Array<Person > = Array<Person>()

names2.append("에이핑크")
names2.remove(at : 0)
names2.removeLast()
print("names2의 크기 : \(names2.count)")

for i in 0..<names2.count{
    print("인덱스 \(i)의 사람 이름 : \(names2[i])")
    let person = Person(name:names2[i], age:age2[i])
    persons.append(person)
    print("만들어진 사람 객체 : \(person.name!)")
}

let target = "티아라"
if names2.contains(target){
    var index = names2.index(of:target)
    print("\(target)의 인덱스 값: \(index!)")
}
