/*
class Person{
    var name : String!
    var age : Int!
    
    init(name : String, age : Int){
        self.name = name
        self.age = age
    }
    func toString() -> String{
        return "{\(name!), \(age!)}"
    }
}

class Baby : Person{
    var mobile : String
 
 //super: 부모
 //self : 나자신
    init(name : String, age : Int, mobile : String){
        self.mobile = mobile
        super.init(name: name, age: age)
        print(toString())
    }
 
 /*
 모든 속성을 초기화 할 수 없는 경우 호출하는 것이 convenience인듯
 */
    convenience init(name : String){
        self.init(name: name, age : 0, mobile : "" )
    }
}

var baby1 = Baby(name: "걸스데이", age: 22, mobile: "010-1000-1000")
print("baby1 정보 -> \(baby1.toString())")

var baby2 = Baby(name:"티아라")
*/

class Person {
    var name : String
    var mobile : String
    
    init(name : String, mobile : String){
        self.name = name
        self.mobile=mobile
    }
}

class Student : Person{
    var school : String!
    
    init(name : String, mobile : String, school : String){
        self.school = school
        super.init(name: name, mobile: mobile)
    }
    
    func sleep() {
        print("학생 \(self.name)이 자고 있습니다.")
    }
}

var student1 = Student(name : "고예윤", mobile: "010-0000-1111", school : "서울대학교")
student1.sleep()
