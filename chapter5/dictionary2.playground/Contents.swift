var names : [Int:String] = [1:"소녀시대",2:"걸스데이",3:"티아라"]
var ages : [Int:Int]  = [1:20,2:22,3:24]
var mobiles : [Int:String] = [1:"010-0000-0000",2:"010-1111-1111",3:"010-2222-2222"]

class Person {
    var name : String?
    var age : Int?
    var mobile : String?
    init(name :String?, age : Int?, mobile:String?){
        self.name=name
        self.age=age
        self.mobile=mobile
    }
}

var persons : [String:Person] = [:]
var person1 = Person(name : names[1], age:ages[1], mobile:mobiles[1])
persons[names[1]!]=person1
var person2 = Person(name :names[2],age:ages[2],mobile:mobiles[2])
persons[names[2]!]=person2
var person3 = Person(name: names[3], age: ages[3], mobile: mobiles[3])

persons[names[3]!]=person3
print("persons 딕셔너리의 원소 개수 : \(persons.count)")
/*
for (i,_) in persons {
    print("persons 이름 : \(i)")
}
*/
