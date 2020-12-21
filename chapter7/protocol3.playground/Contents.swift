//프로토콜은 클래스처럼 상속이 가능하다.
protocol Product{
    func getProductName() -> String
}

protocol Calculator : Product {
    func add(first a : Int, second b : Int) -> Int
}

class MyCalculator : Calculator{
    func getProductName() -> String {
        return "내 계산기"
    }
    func add(first a : Int, second b : Int) -> Int{
        return a+b
    }
}

protocol Thinkable{
    func think()
    init(name : String, mobile : String)
}

class Person{
    var name : String
    var mobile : String
    init(name : String, mobile : String){
        self.name = name
        self.mobile = mobile
    }
}

class Student : Person, Thinkable{
    override required init(name: String, mobile: String) {
        super.init(name: name, mobile: mobile)
    }
    
    func think() {
        print("학생 \(self.name)가 생각합니다.")
    }
}

var student1 : Thinkable = Student(name : "고예윤", mobile : "010-0000-0000")
student1.think()
