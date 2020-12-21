class Person{
    var name : String!
    var age : Int!
    
    init(name : String, age : Int) {
        self.name = name
        self.age = age
    }
    
    func toString() -> String {
        return "Person {\(name!), \(age!)}"
    }
}

/*
 class 를 상속받는 경우
 baby가 person 의 class 를 받는 경우
 class Baby : Person{
 }
 형식으로 상속받는다.
 */
class Baby : Person{
}

var person1 = Person(name: "소녀시대", age: 20)
print("person1 정보 -> \(person1.toString())")

var baby1 = Baby(name: "걸스데이", age: 22)
print("baby1 정보 -> \(baby1.toString())")


class Rectangle{
    var width : Int
    var height : Int
    
    /*
     init함수에서 저장속성들을 저장시키지 않고 show함수를 실행하면 오류가 난다.
     따라서 아래의 상황에서
     show()가 self.width=width, self.height = height 위에 있다면 오류가 발생한다.
 */
    init(width : Int, height : Int){
        self.width=width
        self.height=height
        show()
    }
    
    /*
     init()안에 파라미터를 다르게 하면서 다양하게 함수를 재정의할 수 있다.
     init(){
     //자식 클래스의 속성 초기화
     //부모 클래스의 초기화 함수 호출
     //자식 클래스의 나머지 초기화 코드
     }
 */
    init(){
        self.width=0
        self.height=0
    }
  
    convenience init(height : Int){
        self.init()
        self.height = height
    }
    
    init?(width : Int, height : Int, type : Int){
        self.width = width
        self.height = height
        if type < 1 {
            return nil
        }
    }
    func show() {
        print("Rectangle {\(width),\(height)")
    }
}

var rect1 = Rectangle(width : 100, height : 100)
var rect2 = Rectangle(height : 200)
rect2.show()

var rect3 = Rectangle(width: 300, height: 300, type : -1 )
print("rect3 정보 -> \(rect3)")
