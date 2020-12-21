class Person {
    var name : String?
    var age : Int?
    var mobile : String?
    
    init(name : String?, age : Int? , mobile : String?){
         self.name = name
        self.age = age
        self.mobile = mobile
    }
    
    var friend : Bool{
        get{
            if self.name == "철수"{
                return true
            }
            else{
                return false
            }
        }
    }
    
    func walk(speed : Int) {
        print("\(self.name!)이 \(speed)로 걸어갑니다")
    }
    func run(speed : Int){
        print("\(self.name!)이 \(speed)로 뛰어갑니다")
    }
    func inform(){
        print("이 객체의 이름은 \(self.name!)이고 나이는 \(self.age!) 이고 전화번호는 \(self.mobile!)입니다")
    }
}

var person01 = Person(name: "철수", age: 20, mobile: "01011112222")
var person02 = Person(name: "영희", age: 21, mobile: "01033334444")
var person03 = person01

person01.inform();
person02.inform();
person03.inform();

var isFriend = person03.friend
print("이 친구는 얘랑 친구임이 \(isFriend)합니다 ")

person01.run(speed : 30)
