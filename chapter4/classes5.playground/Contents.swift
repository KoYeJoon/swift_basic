class Person{
    static var total : Int=0
    var name : String?

    init(name : String){
        self.name = name
       // Person.total = Person.total+1 ->왜 얘를 추가해줘야되지? static 타입 속성은 알아서 추가되는 것이 아닌가?
    }
    class var halfTotal : Int{
        get {
            return total / 2
        }
        set(newValue){
            total = newValue*2
        }
    }
    class func getTotal() -> Int{
        return total
    }
}

var person01 = Person(name : "철수")
print("만들어진 사람 객체 수 -> \(Person.total) ")

var person02 = Person(name : "영희")
print("만들어진 사람 객체 수 -> \(Person.total) ")

Person.halfTotal = 10
print("만들어진 사람 객체 수 ->\(Person.total)")

var total = Person.getTotal()
print("만들어진 사람 객체 수 -> \(total)")

class Dog{
    var name : String?
    var ageData : Int = 0
    
    init(name : String){
        self.name = name
    }
    var age :  Int{
        get {
            return ageData
        }
    }
    var birth : Int  {
        get {
            return 2019 - ageData
        }
        set(birth){
                ageData =  2019 - birth
        }
    }
}
var dog01 = Dog(name: "이레")
dog01.birth = 2016
print("\(dog01.name) 강아지의 나이 : \(dog01.ageData)")

