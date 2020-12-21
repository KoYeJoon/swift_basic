/*
/*
 *저장속성, get/set 모두 있는 계산 속성, get만 있는 계산 속성 -> get, set속성이 모두 있는 계산속성
 *get만 있는 계산속성 -> get만 있는 계산 속성
 인 경우에만 재정의가 가능하다.
 */
class Person{
    var name : String
    var age : Int
    
    init(name : String, age : Int){
        self.name = name
        self.age = age
    }
    
}

class Baby : Person{
    
    //name 속성 값이 설정되면 그 값을 화면에 출력하도록 한다.
    override var name : String{
        didSet {
            print("name -> \(name)")
        }
    }
   
    //age 속성은 값을 참조할 때 무조건 10을 반환하도록 함.
    override var  age : Int{
        get{
            return 10
        }
        set{
            
        }
    }
}

var baby1 = Baby(name : "걸스데이", age : 22)
print("baby1 의 age -> \(baby1.age)")

baby1.name="티아라"

class rectangle {
    final var width  : Int!
    final var height : Int!
    final func getWidth()-> Int{
        return width
    }
}
/*
 // final은 자식 클래스에서 재정의할 수 없다는 의미이다.
 
class Square : Rectangle {
    override func getWidth() -> Int{
        
    }
}
*/
*/
class Person {
    var name : String
    var mobile : String
    
    init(name : String, mobile : String){
        self.name = name
        self.mobile=mobile
    }
    func walk(){
        print("사람 \(self.name)이 걸어갑니다.")
    }
}

class Student : Person{
    override func walk() {
        print("학생 \(self.name)이 걸어갑니다.")
    }
}
var person1 = Person(name: "김현수", mobile: "010-0000-0000")
person1.walk()

var student1 = Student(name: "김재학", mobile: "010-1111-1111")
student1.walk()
